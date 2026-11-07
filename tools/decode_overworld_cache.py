#!/usr/bin/env python3
"""Offline decode of the C39A=09 overworld 14-column/13-write cache build.

Private-source validation: REL7 area-entry and REL8 saved-frame parent return.
Defaults remain REL7 DF03=07. Supply the actual build's C39C/C39F/C3A2 and
input provenance for other contexts; a static DF03 descriptor is not always
the loader's source. See ../docs/research.md for scope and omitted evidence.
No platform-stage/menu data is used; raw values receive no gameplay labels.

Mechanism (ROM0 builder; corroborated in these two captured contexts):
  seeds:            C39C/C39F/C3A2 from the selected build input; bank 3
  per column:       ROM0:$1344 -> C3B1=C39C, C3B2=C39F&3F, C3B3=(C39F&C0)>>6
  per row:          ROM0:$1086 -> C3B5 from $7000+C3B1
                    ROM0:$10A4 -> C3B6 from $3F5C+C3B5*2+C3B2 (word then byte)
                    ROM0:$10ED -> C3B4 = high/low nibble of $7B40+C3B6*2(+1)
                    ROM0:$0ED9 -> (C100+cell) = C3B4
  destination:      HL=$C100+C3A2, then L += $10 with byte wrap (13 writes)
  row update:       C3B3 ^= $02; if result bit1 clear: C3B2 += $08 (&$3F,
                    bit6 carry bumps C3B1 += $08 &$3F and refreshes C3B5)
  column update:    C3A2 via SWAP/SUB-$10/SWAP; reload C39C/C39F, then
                    ROM0:$13CB conditional step and $135D writeback

The original ROM is read-only. Large output goes to generated/, never into
versioned exports.
"""
from __future__ import annotations

import argparse
import hashlib
import json
from pathlib import Path

ROM_SHA1 = "1da5834cd7cea711195cd8581614c5022da768b7"

# Live-observed area seeds for the verified overworld region (C39A=09 family).
C39A = 0x09
C39C_SEED = 0x3A
C39F_SEED = 0x46
C3A2_FIRST = 0x0D
BANK = 0x03  # live C3C5 during the build; selects the $4000-$7FFF window

COLUMN_COUNT = 14
WRITES_PER_COLUMN = 13


def rom_offset(bank: int, cpu_addr: int) -> int:
    if bank == 0:
        return cpu_addr
    return bank * 0x4000 + (cpu_addr - 0x4000)


def read_u16le(rom: bytes, off: int) -> int:
    return rom[off] | (rom[off + 1] << 8)


def rotl1(v: int) -> int:
    return ((v << 1) & 0xFF) | (v >> 7)


def swap_nibbles(v: int) -> int:
    return ((v & 0x0F) << 4) | ((v & 0xF0) >> 4)


def rotr1(v: int) -> int:
    return ((v >> 1) & 0x7F) | ((v & 1) << 7)


def rotl2_field(v: int) -> int:
    """(v & $C0) RLCA x2: what ROM0:$1344 stores into C3B3."""
    return (rotl1(rotl1(v & 0xC0))) & 0x03


def rotr2_field(v: int) -> int:
    """C3B3 RRCA x2: what ROM0:$135D folds back into the high field."""
    return rotr1(rotr1(v)) & 0xC0


def step_13cb(b1: int, b2: int, b3: int) -> tuple[int, int, int]:
    """Literal ROM0:$13CB: C3B3 ^= $01; if result bit0 set, step C3B2.

    The C3B2 step is the RLCA/SWAP/SUB-$20/SWAP/RRCA sequence with borrow
    carried into C3B1 the same way. NOTE: for input 0 this yields $07 with
    borrow, not $FF -- do not simplify to plain -1.
    """
    b3 = (b3 ^ 0x01) & 0xFF
    if not (b3 & 1):
        return b1, b2, b3
    a = swap_nibbles(rotl1(b2))
    sub = a - 0x20
    borrow = sub < 0
    a = swap_nibbles(sub & 0xFF)
    b2 = rotr1(a)
    if borrow:
        c = swap_nibbles(rotl1(b1))
        sub1 = c - 0x20
        b1 = rotr1(swap_nibbles(sub1 & 0xFF))
    return b1 & 0xFF, b2 & 0xFF, b3


def decode(rom: bytes, c39c: int = C39C_SEED, c39f: int = C39F_SEED,
              c3a2_first: int = C3A2_FIRST, *,
              input_provenance: str | None = None) -> dict:
    """Decode one supplied C39A=09 build context (default: REL7 area-entry).

    C3A2 is the full destination head, not an area ID. The cells dictionary's
    keys are the emitted write mask; absent keys are unwritten, not zero.
    column_heads records traversal order; rows lists encountered row nibbles.
    Caller-supplied provenance is metadata, not independent validation.
    """
    if hashlib.sha1(rom).hexdigest() != ROM_SHA1:
        raise ValueError("ROM SHA-1 mismatch; refusing to decode another revision")
    for name, value in (("C39C", c39c), ("C39F", c39f), ("C3A2", c3a2_first)):
        if not isinstance(value, int) or not 0 <= value <= 0xFF:
            raise ValueError(f"{name} must be an unsigned byte")
    if input_provenance is None:
        input_provenance = (
            "REL7 area-entry DF03=07; live first build head"
            if (c39c, c39f, c3a2_first) == (C39C_SEED, C39F_SEED, C3A2_FIRST)
            else "caller-supplied build inputs; provenance unspecified"
        )
    fam0 = read_u16le(rom, 0x3C80 + 2 * C39A)  # expect $7000
    fam1 = read_u16le(rom, 0x3C98 + 2 * C39A)  # expect $3F5C
    fam3 = read_u16le(rom, 0x3CC8 + 2 * C39A)  # expect $7B40
    assert fam0 == 0x7000, hex(fam0)
    assert fam1 == 0x3F5C, hex(fam1)
    assert fam3 == 0x7B40, hex(fam3)

    def bank_byte(addr: int) -> int:
        return rom[rom_offset(BANK, addr)]

    s9c, s9f = c39c, c39f  # area-struct pair, mutated per column
    cells: dict[str, dict] = {}
    head = c3a2_first
    column_heads, rows = [], []
    for _ in range(COLUMN_COUNT):
        column_heads.append(head)
        # ROM0:$1344 reseed from the struct pair (fresh column entry).
        b1, b2, b3 = s9c, s9f & 0x3F, rotl2_field(s9f)
        # ROM0:$1086 initializes C3B5; $0F19 refreshes it on a C3B1 carry.
        b5 = bank_byte(fam0 + b1)
        cell = head
        for write in range(WRITES_PER_COLUMN):
            # ROM0:$10A4: word at fam1 + b5*2, then byte at +b2.
            ptr = read_u16le(rom, fam1 + b5 * 2)
            b6 = bank_byte(ptr + b2)
            # ROM0:$10ED: class byte at fam3 + b6*2 (+1 on C3B3 bit1),
            # then nibble by C3B3 bit0 (low) vs high+swap.
            src = fam3 + b6 * 2 + (1 if b3 & 0x02 else 0)
            raw = bank_byte(src)
            b4 = (raw & 0x0F) if (b3 & 0x01) else ((raw & 0xF0) >> 4)
            key = f"{cell:02X}"
            assert key not in cells
            row = cell >> 4
            if row not in rows:
                rows.append(row)
            cells[key] = {
                "value": b4,
                "C3B1": b1, "C3B2": b2, "C3B3": b3,
                "C3B5": b5, "C3B6": b6,
                "class_addr": f"{src:04X}", "class_byte": raw,
            }
            cell = (cell + 0x10) & 0xFF  # $0EDB: L only, H stays $C1
            if write == WRITES_PER_COLUMN - 1:
                break  # $0EE5: no selector row-step after the final write
            # In-loop row update (ROM0:$0EE7 block, after cell emission).
            b3 = (b3 ^ 0x02) & 0xFF
            if not (b3 & 0x02):
                b2 = (b2 + 0x08) & 0xFF
                if b2 & 0x40:
                    b2 &= 0x3F
                    b1 = (b1 + 0x08) & 0x3F
                    b5 = bank_byte(fam0 + b1)
        # Column-end tail for pair A: ROM0:$1344 re-seeds from the struct
        # (discarding end-of-column live values), then $13CB steps, then
        # $135D folds back into the struct for the next column.
        b1, b2, b3 = s9c, s9f & 0x3F, rotl2_field(s9f)
        b1, b2, b3 = step_13cb(b1, b2, b3)
        s9c, s9f = b1, (b2 | rotr2_field(b3)) & 0xFF
        head = swap_nibbles((swap_nibbles(head) - 0x10) & 0xFF)
    return {
        "seeds": {"C39A": C39A, "C39C": c39c, "C39F": c39f,
                  "C3A2_first": c3a2_first, "bank": BANK},
        "families": {"base0": f"{fam0:04X}", "base1": f"{fam1:04X}",
                     "base3": f"{fam3:04X}"},
        "build_context": {"input_provenance": input_provenance,
                          "column_heads": [f"{h:02X}" for h in column_heads]},
        "columns": [f"{h & 0x0F:02X}" for h in column_heads],
        "rows": rows,
        "cells": cells,
    }


def main() -> None:
    ap = argparse.ArgumentParser()
    ap.add_argument("--rom", default="rom/Gargoyle's Quest (USA, Europe).gb")
    ap.add_argument("--out", default="generated/rel7/overworld_cache_decoded.json")
    ap.add_argument("--c39c", default=C39C_SEED, type=lambda x: int(x, 0))
    ap.add_argument("--c39f", default=C39F_SEED, type=lambda x: int(x, 0))
    ap.add_argument("--c3a2-first", default=C3A2_FIRST, type=lambda x: int(x, 0))
    ap.add_argument("--input-provenance", help="Source of supplied build inputs (metadata only)")
    args = ap.parse_args()
    rom = Path(args.rom).read_bytes()
    result = decode(rom, c39c=args.c39c, c39f=args.c39f,
                     c3a2_first=args.c3a2_first, input_provenance=args.input_provenance)
    out = Path(args.out)
    out.parent.mkdir(parents=True, exist_ok=True)
    out.write_text(json.dumps(result, indent=2) + "\n")
    print(f"decoded {len(result['cells'])} cells -> {out}")


if __name__ == "__main__":
    main()
