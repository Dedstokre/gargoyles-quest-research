# Publication review

Reviewed: 2026.11.07 11:46, from the local system clock.
Status at the initial review boundary: public-subset preparation and the checks below were complete; no commit, GitHub remote, upload, or public publication had been performed.

Publication preparation: GitHub authentication was confirmed as `Dedstokre`, and `Dedstokre/gargoyles-quest-research` did not resolve as an existing repository for that account.
An independent local `main` repository was prepared for exact-file review, with a repository-local GitHub noreply identity rather than the machine's personal-email default.
The owner subsequently approved both exact code and reference/test file sets and commit messages, the noreply identity, and public publication at that destination without a license for now.
No private Git history is imported.
Licensing remains undecided, and no license grant has been added.

## Included content

- 20 explicitly inventoried text files, including the manifest itself.
- 12 source-derived files: six byte-identical copies and six documented export-only adaptations.
- Five executable behavior models, one ROM-free regression suite, four Python utilities, and two symbol files.
- Public-specific documentation, local-ROM instructions, rights notice, and default-deny ignore rules.

The source files and source hashes were checked against private revision `2debf7cbdd50414141f0b4505e1b371bc9f62b46`.
No source Git objects, binary/media files, symlinks, native states, bulk extracted datasets, or copied reference trees are included.
Small numeric behavior tables and focused test expectations remain intentionally included, as described in the README.

## Verification performed

| Check | Result |
|---|---|
| Export-folder regression run, `node tests/model_regressions.mjs` | 74/74 pass with Node.js v26.13.0, without ROMs, private fixtures, or npm dependencies. |
| Manifest inventory and hashes | Exact inventory match; SHA-256 covers 19 payload files, excluding the manifest itself. |
| Public documentation links | All 21 local Markdown path targets and their referenced heading fragments resolve. |
| Python syntax and imports | All four utilities parse/compile under Python 3.14.9 and import only standard-library modules. |
| JavaScript dependencies | All seven static/dynamic import targets resolve locally or use Node's standard library. |
| Symbol metadata | All 125 JSON entries retain an evidence class, confidence level, and evidence summaries. |
| Survey and cache-decoder CLI help | Both work without private inputs. |
| Local-ROM verifier failure paths | Missing ROM exits 2; synthetic nonmatching ROM exits 1; multiple synthetic ROMs exit 2. |
| Tile-decoder synthetic checks | All four uniform 2bpp color-index vectors pass. |
| Survey synthetic checks | Bank-offset mapping, an absolute jump, and a signed relative jump match independently supplied expectations. |
| Cache-decoder input guard | Rejects a synthetic nonmatching input before traversing ROM structures. |
| Git ignore behavior | Temporary isolated Git metadata sees exactly the 20 approved files; 12 probes for unreviewed paths are ignored. |
| Original source repository | Working tree remains clean, with no source-file changes or publication remote added. |
| Source project health | Only recognized deferred `WARN REL-001` about the old continuation pointer; left unchanged. |
| Source canon verifier | Passes: 979 links, 65 JSON files, 125 curated symbols, two verified references, and the accepted fixture/exclusion checks. |

The source integrity manifest was not refreshed because no original tracked file was changed and no commit was prepared.
The export has its own independent file manifest, not a copy of the private project's manifest.

## Content-screening coverage and limits

Every exported file was decoded as UTF-8 and checked for NUL bytes and unexpected file types.
A focused pattern scan found no private-key blocks, common GitHub/provider/AWS/Slack credential signatures, credential-bearing HTTP URLs, email addresses, private absolute filesystem paths, or long encoded payloads.
The selected files and export-only diffs were also reviewed for bundled game content and private dependencies.

No dedicated secret-scanning utility was installed: `gitleaks`, `detect-secrets`, and `trufflehog` were unavailable.
The focused pattern scan is not an exhaustive secret detector, ownership audit, copyright determination, or legal clearance.
Private citations preserved inside symbol evidence are intentionally not bundled or represented as locally resolvable evidence.
The public subset's content inventory does not audit or sanitize the private repository's historical objects, which must remain unpublished.

The ROM verifier's successful matching-input path and full game-data decoding were not exercised from the export because no original ROM was copied into it.
No emulator, rendered/GPU suite, full gameplay replay, or new original-ROM investigation was run.
Passing model regressions do not resolve the [documented model gaps](research.md#known-model-gaps), particularly flight-exhaustion timing.

## Continuing owner-review requirements

- Re-review future exported files, research limitations, and retained numeric behavior tables before expanding this subset.
- Choose whether to add a license for material you have authority to license; licensing is currently undecided.
- Keep the approved initial destination public at `Dedstokre/gargoyles-quest-research` unless separately directed otherwise.
- Inspect the Git author identity before any new commit to avoid unintended name/email disclosure.
- Obtain approval for each future exact staged file set and commit message before creating the commit.
- Publish only this independently prepared folder, never the private research branch, tags, or history.

Changing any payload requires refreshing the manifest and repeating the relevant content, integrity, and dependency checks before upload.
