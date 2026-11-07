# Generated Gargoyle's Quest disassembly

This directory contains a complete, text-only MGBDIS baseline of the verified USA/Europe Game Boy ROM.
It is generated assembly with analyst-assigned labels, not recovered original source code or a fully annotated semantic reconstruction.
The original and rebuilt ROM binaries are not distributed here.

**Distribution boundary:** the assembly includes the game's executable code and raw data, including bytes representing graphics, sound, and text.
It can reconstruct the complete ROM, so the absence of `.gb`, PNG, or WAV files does not make this copyright-free or equivalent to a tools-only research package.
This broader public-disassembly scope was requested separately from the initial conservative reference export.
No license or rights to the game content are granted by this repository or by the tool/support-file licenses below.

## Contents

- `bank_000.asm` through `bank_007.asm`: eight 16 KiB ROM banks, with bank-aware addresses and opcode-byte comments.
- `game.asm`: includes the eight banks and hardware definitions.
- `gargoyles_quest.sym`: generation profile, with 133 analyst ROM labels and 18 typed regions.
- `hardware.inc`: pinned upstream Game Boy hardware definitions, replacing MGBDIS's older bundled copy.
- `Makefile`: MGBDIS-generated build recipe, retained without behavioral modifications.
- [provenance.json](provenance.json): input hashes, tool pins, generation settings, and verification results.
- `third_party/`: preserved MGBDIS MIT and hardware.inc CC0 notices, which do not license the game.

The text profile changes known `.image` regions into `.data` declarations rather than distributing separate extracted images.
It merges the prepared private MGBDIS seed with ROM-address labels from the private canonical Gearboy symbol file at the recorded source revision.
RAM labels are not included in this generation profile.
Existing inferred and provisional labels do not gain confidence by appearing in assembly.

## Build locally

Install RGBDS **v1.0.4**, including `rgbasm`, `rgblink`, and `rgbfix`, and put those executables on your `PATH`.
Use the [official RGBDS project](https://github.com/gbdev/rgbds/releases/tag/v1.0.4); the verified Linux release-asset digest is recorded in the provenance file.
Run from this repository's root:

```bash
make -C disassembly SHELL=/bin/bash
sha256sum disassembly/game.gb
```

The generated Makefile's checksum-printing shell fragment uses Bash syntax, so the explicit `SHELL=/bin/bash` avoids relying on `/bin/sh` behavior.
Expected output size is **131072 bytes**, with SHA-256:

```text
ad6f9fe97a40418279d3b834a64d9c6c52c0da209f430718f2bd02611892326f
```

Build outputs (`game.gb`, `game.o`, `game.map`, and the linker-generated `game.sym`) stay local and are excluded by the root default-deny allowlist.
The authored `gargoyles_quest.sym` is the generation profile, not the ignored linker output.
Never upload a rebuilt ROM or add one to a release.

## Verify without distributing the input ROM

```bash
python tests/test_disassembly_baseline.py
```

The source-only tests need no ROM or RGBDS.
The build test runs when RGBDS is on `PATH`, or when `GQ_RGBDS_DIR` names the directory containing its executables; otherwise that one test explicitly skips.
It builds in a disposable directory and checks the complete linked and fixed output against the independently recorded size and SHA-256, without copying a ROM into this repository.
Run `node tests/model_regressions.mjs` separately for the existing behavioral models.

## Regenerate from your own ROM

Use MGBDIS revision `95d951a9881a0d7ff1a42a94d1be175da92b1777` from [upstream](https://github.com/mattcurrie/mgbdis/tree/95d951a9881a0d7ff1a42a94d1be175da92b1777).
Verify your own legally obtained input against the hashes in the provenance file and keep it outside the publication tree.
Copy the profile beside it as `gargoyles_quest.sym`, with the input named `gargoyles_quest.gb`.
Generate into a new local directory, never over this maintained baseline:

```bash
python /path/to/mgbdis/mgbdis.py /path/to/local/gargoyles_quest.gb --output-dir /path/to/new-output --print-hex --uppercase-hex --align-operands
```

The generated bank files, `game.asm`, and Makefile reproduce the baseline with these settings.
For the published variant, use `hardware.inc` from upstream revision `f8c7a649fe663c4550db6c86a31644852c2dd080`; the exact hash is in the provenance file.
Do not copy the generated ROM, object, map, or linker-symbol outputs into a public change.

## What was verified and what was not

**Observed — Very High:** the prepared image profile and the text profile both rebuilt the entire verified ROM byte-for-byte locally.
The public source/support combination is checked separately and its linker output is compared before `rgbfix`, so equality does not depend on header-checksum repair.
**Observed — Very High, narrow source check:** the seven-instruction/21-byte B1:`$44DF-$44F3` player-update pipeline agrees with the original ROM bytes and the previously recorded call order.

These checks prove byte preservation and that narrow source correspondence, not that every opcode, label, function boundary, or cross-bank call is semantically correct.
For example, automatic entry labels can cause raw-byte fallbacks inside an instruction stream: the baseline emits `db $E6` at ROM0:`$0017`, followed by its `$0018` entry label.
Untyped tables may also be rendered as instructions.
Generic `Call_...`, `Jump_...`, and `jr_...` names are tool-generated navigation aids, not established functions or original symbols.
Runtime bank selection, timing, and unresolved gameplay behavior still require independent evidence.

This is not a measured demonstration that MGBDIS makes the research workflow faster.
The separate [research guide](../docs/research.md) remains the entry point for model and evidence limitations.
