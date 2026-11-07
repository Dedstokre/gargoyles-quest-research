# Publication boundary and provenance

## Scope

This repository is a standalone selection from private research revision `2debf7cbdd50414141f0b4505e1b371bc9f62b46`, with independently initialized Git history.
It contains reviewed symbols and evidence summaries, selected source models/tests, four standalone utilities, and public-specific documentation.
It is an optional public snapshot, not a replacement authority for the original repository's canon.
No original research file or Git history is deleted, rewritten, or made public by creating this folder.

The export deliberately does not mirror `canon/`, `runtime/`, or any other private directory wholesale.
File extensions alone do not determine safety: JSON, CSV, Markdown, and source code can contain copied game content, credentials, or personal details.
Compact numeric behavior parameters and focused test expectations are retained; bulk copied game datasets are not.

## Included file policy

[PUBLICATION_MANIFEST.json](../PUBLICATION_MANIFEST.json) lists every included payload file and its SHA-256 hash, with original source paths/hashes where applicable.
The manifest does not hash itself.
Paths are relative; no private filesystem root, Git author identity, remote URL, or source history is included.
The source revision hash identifies provenance but does not ship the source repository's Git objects.

The root `.gitignore` uses a default-deny allowlist: only the individually reviewed paths are eligible for normal Git addition.
This is an accidental-addition guard, not a security boundary: `git add -f`, an archive tool, or manual browser upload can bypass it.
An existing tracked file can also be replaced with inappropriate content without changing its path.
Re-review the actual upload inventory and content every time.

### Export-only adaptations

- `models/platforming_model.js` and `models/player_collision_model.js`: remove unsupported “clean-room” wording in introductory comments; no executable behavior changes.
- `models/overworld_model.js`: label its original RNG audit citation as private provenance, not an included file; no executable behavior changes.
- `canon/symbols/gearboy_symbols.sym`: replace the omitted `symbol_map.md` pointer with a qualified pointer to the included JSON evidence summaries.
- `tools/decode_overworld_cache.py`: replace its omitted private-report pointer with the public research guide and explicitly qualify inherited validation in the docstring.
- `tools/verify_project_inputs.py`: replace its final private-handoff status message with a README pointer; input verification is unchanged.
- Public README, rights notice, research/publication/review guides, local-ROM README, ignore rules, and manifest are authored specifically for this export.

All other copied file payloads remain byte-identical to the source revision.
No inference is promoted by copying it into this folder.

## Excluded material

- The private `.git` directory and all private commit/branch/tag history.
- Original ROMs, patches, native states, save files, raw memory/VRAM/framebuffer/APU dumps, and bundled disassembly output.
- Extracted artwork, screenshots, sound/music recordings, video, decoded dialogue, and bulk map/animation datasets.
- Raw experimental captures, large research logs, archives, generated outputs, and private checkpoint-backed fixtures.
- Copied third-party reference trees, emulator/disassembler source bundles, fonts, manuals, guides, and PDFs.
- Local editor/agent/provider configuration, environment files, caches, machine-specific paths, and private task/campaign handoffs.
- Tests and tools whose omitted private fixtures or dependencies would make this small export incomplete or misleading.

## GitHub publication and future updates

The owner approved public publication at `Dedstokre/gargoyles-quest-research`, the two exact initial commit file sets/messages, and the account's GitHub noreply author identity.
Licensing remains undecided for material they control.
There is intentionally no `LICENSE` file until that decision is made.
The [rights notice](../NOTICE.md) does not authorize licensing someone else's work.

Review [the verification record](publication-review.md), the manifest, and the actual files before upload.
Do not add the private research repository as a remote or push its branch, tags, or history.
If creating a Git repository here, initialize it independently, inspect the exact staged file list and diff, and use only explicitly approved commits.
Check the Git identity before committing: a new commit's author name/email can disclose personal information even though the payload contains no private Git metadata.
Initial publication is authorized only for this reviewed subset and its two approved independent commits, not the private research repository or its history.
Future content additions, commits, or publication changes require their own appropriate review and approval.

Neither automated checks nor the absence of a bundled ROM constitutes a legal clearance.
The checks are risk-reduction evidence with the stated limits, not a guarantee of lawful publication or absence of every possible secret.
