# Gargoyle's Quest — reverse-engineering reference

A small technical reference for the USA/Europe Game Boy release: analyst-assigned debugger symbols, executable behavior models, and local analysis utilities.
This is not the original source code, a playable game, or the separate Godot remake.

## Start here

- [Research guide and model limitations](docs/research.md).
- [Machine-readable symbol evidence](canon/symbols/symbols.json), retaining classification, confidence, and scope.
- [Gearboy symbol file](canon/symbols/gearboy_symbols.sym) for debugger navigation.
- [Publication boundary and provenance](docs/publication.md).
- [Rights and licensing status](NOTICE.md).

Names are analyst-assigned, not recovered original debug symbols.
Private research citations identify source evidence that is intentionally not bundled here; this snapshot is not a fully auditable replacement for the private research archive.

## Run the models without a ROM

Use a current Node.js release supporting ES-module syntax detection in `.js` files.
The exported suite was tested with Node.js v26.13.0.
No npm installation, emulator, ROM, network connection, or fixture download is required.

```bash
node tests/model_regressions.mjs
```

The suite exercises platforming, ordinary-solid collision, stage-specific camera following, overworld movement/RNG, and animation bookkeeping.
Passing tests establish model regressions, not a complete or independently verified recreation of the game.
Read the [known model gaps](docs/research.md#known-model-gaps) before using these models as implementation specifications.

## Optional local ROM analysis

The Python utilities use the standard library only.
They were checked with Python 3.14.9; the overworld decoder's type annotations require Python 3.10 or newer.
Supply your own legally obtained matching ROM under `rom/`; no ROM acquisition instructions or downloads are provided.

```bash
python tools/verify_project_inputs.py
python tools/gq_survey.py "rom/Gargoyle's Quest (USA, Europe).gb"
python tools/gq_survey.py "rom/Gargoyle's Quest (USA, Europe).gb" --disasm 1:0x44df --count 12
python tools/decode_overworld_cache.py --rom "rom/Gargoyle's Quest (USA, Europe).gb" --out generated/overworld_cache.json
```

| Utility | Purpose and limits |
|---|---|
| `verify_project_inputs.py` | Refuses missing, ambiguous, or nonmatching local `.gb`/`.gbc` inputs; expected hashes are in [rom/README.md](rom/README.md). |
| `gq_survey.py` | Prints header/checksum information and optional linear SM83 disassembly; it does not enforce the target revision or prove code/data boundaries. |
| `decode_overworld_cache.py` | SHA-1-gated decoder for the tested `C39A=$09` cache-builder family, not a complete overworld or stage decoder. |
| `gb_tile_decode.py` | Importable 8×8 2bpp-to-color-index helper; no game tile data is bundled. |

The survey and verifier only read their inputs.
The cache decoder writes JSON to `--out`, creates its parent directories, and can overwrite an existing output file; choose a new path under ignored `generated/`.
Its default seeds describe one recorded build context, not every overworld location.
Never upload locally generated maps, dumps, or other extracted content without a separate rights and privacy review.

## What is deliberately absent

No ROMs, save states, graphics, audio, screenshots, video, bulk map/animation exports, dialogue dumps, memory dumps, copied third-party references, local agent configuration, or private Git history are included.
Compact numeric behavior parameters, animation/frame identifiers, and synthetic or focused regression expectations remain in the source models and tests.
Excluding the ROM itself is not a legal guarantee; see [NOTICE.md](NOTICE.md).

## Publication status

This repository publishes only the reviewed subset, with independent Git history rather than the private research history.
The [publication guide](docs/publication.md) explains the exact-file inventory and publication boundaries.
No open-source license has been selected.
