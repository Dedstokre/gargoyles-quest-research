# Research guide and model scope

This is a selected public reference snapshot, not a new investigation or a promotion of previously provisional conclusions.
Its source revision and file hashes are recorded in [PUBLICATION_MANIFEST.json](../PUBLICATION_MANIFEST.json).
The original research repository remains the maintained authority; this export does not introduce a second independent body of canon.

## Evidence vocabulary

- **Observed**: directly recorded in ROM bytes, machine state, execution traces, or hardware behavior.
- **Inference**: an interpretation of observed facts.
- **Hypothesis**: a provisional explanation not sufficiently established.

Confidence levels are **Very High**, **High**, **Medium**, and **Low**.
Confidence concerns the meaning assigned to an address or behavior, not merely whether that address exists.
Names in all exported symbol files and models are analyst-assigned.
Preserve the distinction between source-decoded behavior, controlled test conditions, and naturally observed gameplay.

The symbol JSON preserves the original evidence summaries and private source-path citations verbatim.
Those paths and REL campaign identifiers are provenance references, not missing dependencies to download or evidence included in this snapshot.
External source links identify corroboration only; no external reference tree is redistributed.
The Gearboy `.sym` file is a navigation aid with broader label coverage than the JSON; absence of a JSON entry must not be treated as proof of a label's meaning or confidence.

## Finding a starting point

These navigation addresses are retained from the private project's source-revision instructions and symbol references, rather than independently re-proven during export.

| Address | Research entry point | Evidence and confidence |
|---|---|---|
| ROM0:`$0150` | Startup | Observed — Very High; debugger label `BootInit`. |
| ROM0:`$09B7` | VBlank handler | Observed — Very High; debugger label `VBlankISR`. |
| ROM0:`$0B31` | Joypad normalization/edge reader | Observed — Very High; input-transform evidence summarized below. |
| B1:`$44DF` | Main side-scrolling player update | Inference — Very High; semantic identification from repeated scene calls and the documented update pipeline. |
| B1:`$4F23` | World-entity dispatcher | Observed — Very High; active/update gates and selector-based dispatch are source-established. |
| B1:`$6F55` | Overworld destination/encounter path | Inference — Very High for the documented normal-walking path; special event meanings remain partial. |
| B2:`$4D80` / `$4EC0` / `$50C0` | Animation, frame, and layout pointer tables | Observed — Very High; they are addresses, not bundled graphics. |
| B3:`$4000` / `$4003` | Audio tick / command entries | Observed — Very High for the entry roles; no audio data or playback model is included. |

`B1:$44DF` means logical CPU address `$44DF` while ROM bank 1 is mapped.
The bank is essential for switchable addresses; the same CPU address can refer to unrelated bytes in another bank.
The survey helper's file-offset convention is `bank * 0x4000 + (address - 0x4000)` for switchable ROM banks, with fixed-bank offsets equal to their CPU addresses.
The software bank shadow is not a substitute for verifying the physically mapped bank in a runtime investigation.

## Input and record conventions

**Observed — Very High (source-revision joypad-reader evidence):** the game stores normalized held input at `$C261` and newly pressed edges at `$C262`.
The edge expression is `(old XOR new) AND new`.
Masks are A=`$01`, B=`$02`, Select=`$04`, Start=`$08`, Right=`$10`, Left=`$20`, Up=`$40`, Down=`$80`.
These are software masks, not the raw active-low hardware input register.

**Inference — Very High (source-revision symbol evidence):** the player record begins at `$C200`, world Y occupies `$C203/$C204`, world X occupies `$C206/$C207`, and the animation ID/timer/frame fields are `$C20E/$C20F/$C210`.
Use the per-entry evidence and scope in [symbols.json](../canon/symbols/symbols.json) instead of generalizing those player meanings to every actor record.

## Executable models

| Module | Included behavior | Important boundary |
|---|---|---|
| [platforming_model.js](../models/platforming_model.js) | Byte-oriented jump/fall integration, ordinary horizontal integration, flight bookkeeping, wall latch/jump, forced input. | Selected controller behavior, not a complete player or combat engine; see the gaps below. |
| [player_collision_model.js](../models/player_collision_model.js) | Ordinary class-`$01` solid probes and corrections. | Caller supplies world-space terrain queries; hazards, slopes, and special classes are excluded. |
| [camera_contract.js](../models/camera_contract.js) | Tested stage-0 software-camera relation/follow and a narrow correction hook. | Not asynchronous hardware SCX/SCY behavior or a universal camera profile. |
| [overworld_model.js](../models/overworld_model.js) | RNG, accepted-step reservation, occupancy gates, encounter selection, step animation. | Special events remain callbacks; the region constants are behavior parameters, not a complete terrain map. |
| [animation_model.js](../models/animation_model.js) | Animation reset/timing and abstract OAM composition. | Numeric frame references only; caller supplies layouts/pieces, and no tile patterns or images are provided. |

The [regression suite](../tests/model_regressions.mjs) carries invariant/sanity distinctions and focused expected values.
It does not emulate the ROM or replay the private evidence archive.

## Known model gaps

The selected models are historical behavioral translations, not complete specifications of every later accepted finding.
Exporting them does not increase their evidence confidence.

- **Observed — Very High in the private REL48 evidence, inherited rather than re-observed here:** a natural tier-0 zero-budget update exits flight and performs downward integration on that update.
  The exported platforming model still marks exhaustion as a hypothesis and sets the post-flight phase without running that fall integration in the same branch.
  The regression suite deliberately leaves that branch untested; its passing result does not validate exhaustion timing.
- **Hypothesis — Medium in the platforming model:** post-flight re-entry remains provisional; do not treat that implementation as demonstrated gameplay.
- **Observed — High, controlled fixture only:** support-loss controller dispatch has evidence, but the model's comments do not establish a naturally reached ledge or its geometry/timing.
- **Hypothesis — High in the symbol data:** full animation completion-flag semantics remain unresolved; the one-shot sanity test pins a translation rather than proving every original-game case.
- The collision model deliberately excludes the separate environmental no-direction route and all special terrain classes.
- Camera far-bound parameters are source-decoded in the exported model's evidence labels, not naturally demonstrated endpoints in that model's test scope.

The exhaustion comparison is sourced from private `canon/analysis/platforming.md`, “Natural exhaustion boundary (REL48; source corroboration),” and `runtime/gearboy/REL0-49/rel48/findings.md` at the manifest's source revision.
Those files and their native evidence are intentionally absent from this public subset.
No behavior fixes or new gameplay research were performed while preparing the export.

## Reproducing or extending a finding

1. Verify your local ROM against the recorded hashes.
2. Choose one bounded question and identify its bank-aware source addresses or runtime consumers.
3. Preserve the tested scene, input conditions, evidence type, confidence, and known limits.
4. Keep local ROMs, generated disassembly, graphics, state files, and memory captures outside the publication allowlist.
5. Review both correctness and redistribution/privacy implications before adding a new public file.

This snapshot cannot independently reproduce private checkpoint-backed conclusions without the omitted evidence or a fresh local investigation.
That limitation is deliberate, not evidence that the omitted files are safe to publish.
