# GitHub Publication Checklist

## Files in this release candidate

Upload the complete contents of this directory after the remaining publication
checks below. The minimum runnable set is:

- `ICSC2026_Tupipa_complete_commented_source.csd`
- `data/recording_tables/mono_h02.dat` through `mono_h14.dat`
- `data/recording_tables/mono_muted_pick.wav`

Recommended supporting materials already included are:

- `README.md`
- `CITATION.cff`
- `LICENSE`
- `RIGHTS.md`
- `listening_report.txt`
- `audio_examples/*.wav`
- `audit/*.csv`
- `.gitignore`

## Complete before making the repository public

- [x] A custom notification-and-attribution license covers the source code,
  recording-derived tables, WAV files, and documentation. It permits use,
  modification, redistribution, and incorporation into commercial or
  noncommercial projects while requiring one notification per project and
  clear attribution. Notification does not require approval or a reply.
- [x] Public distribution permission for `mono_muted_pick.wav`, the
  recording-derived tables, and the five example WAV files was confirmed by
  the authors on 11 November 2026.
- [x] Repository URL added to `README.md`, `CITATION.cff`, and `LICENSE`:
  https://github.com/mamanunu/tupipa-csound-physical-model
- [ ] Add proceedings pages and a DOI to the citation when available.
- [ ] Perform one clean-clone render test before creating a numbered release.

## Do not upload from the working archive

- review files or chair/reviewer comments
- the signed acceptance certificate
- old or duplicate CSD files and supplementary ZIP archives
- `.DS_Store`, `.bak`, `.aux`, `.out`, build logs, or render logs
- test renders such as `render_test.wav` and `render_test_final.wav`
- raw field recordings, photographs, or videos without explicit publication
  consent and a documented license
- presentation drafts, presenter scripts, GUI screenshots, and temporary files
- `llncs.cls` or the camera-ready PDF unless the publisher's redistribution
  terms have been checked
- pitch-audit files containing absolute local paths

## Optional later additions

- a corrected and independently documented performance demonstration
- a reproducible analysis script using relative paths and declared software
  dependencies
- an archival DOI from Zenodo linked to a numbered GitHub release
