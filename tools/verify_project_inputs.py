#!/usr/bin/env python3
"""Verify the local Gargoyle's Quest ROM before analysis or patching."""
from pathlib import Path
import hashlib, zlib, sys

EXPECTED = {
    "size": 131072,
    "crc32": "0030E61F",
    "md5": "63e3f5f4b90f17bdf6d2f2aed515e248",
    "sha1": "1da5834cd7cea711195cd8581614c5022da768b7",
}

root = Path(__file__).resolve().parent.parent
roms = list((root / "rom").glob("*.gb")) + list((root / "rom").glob("*.gbc"))
if not roms:
    print("No .gb/.gbc ROM found under rom/")
    sys.exit(2)
if len(roms) > 1:
    print("Multiple ROMs found; specify only the original target ROM under rom/:")
    for p in roms: print(" -", p.name)
    sys.exit(2)
p = roms[0]; data=p.read_bytes()
got = {
    "size": len(data),
    "crc32": f"{zlib.crc32(data)&0xffffffff:08X}",
    "md5": hashlib.md5(data).hexdigest(),
    "sha1": hashlib.sha1(data).hexdigest(),
}
for k,v in got.items():
    print(f"{k:6} {v} {'OK' if v == EXPECTED[k] else 'MISMATCH'}")
if got != EXPECTED:
    sys.exit(1)
print("\nOriginal ROM verified.")
print("Gearboy symbols:", root / "canon" / "symbols" / "gearboy_symbols.sym")
print("Public reference:", root / "README.md")
