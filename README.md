# Playable Tupipa Physical Model for Csound

This repository contains the commented Csound implementation and supporting
materials for:

Repository: https://github.com/mamanunu/tupipa-csound-physical-model

> Yao Ma and Wanjun Yang, "An Analysis-Guided Workflow for Constructing
> Playable Csound Physical Models: A Tupipa Case Study," 8th International
> Csound Conference (ICSC2026), 2026. Submission ID 53.

The case study models the single-string course of a Tupipa using four layers:

1. core string vibration (`wgpluck2`),
2. body response,
3. plectrum contact, and
4. friction/noise.

## Release status

The authors have confirmed that the included recording-derived data and WAV
examples may be distributed publicly. The repository is released under the
custom notification-and-attribution terms in `LICENSE`. See `RIGHTS.md` and
`UPLOAD_CHECKLIST.md` for the publication status.

## Requirements

- Csound 6.x with standard opcodes
- Tested with Csound 6.18 on macOS
- No third-party Csound plugins or CsoundQt GUI are required

## Render the model

Run the command from the repository root:

```bash
csound -W -o render_test.wav ICSC2026_Tupipa_complete_commented_source.csd
```

The command renders a 2.4-second stereo WAV file at 44.1 kHz. The standard
score event uses a 369 Hz fundamental. The score's `p4` field can supply a
fundamental frequency from 247.8 to 1000 Hz. Missing or nonpositive input uses
the 369 Hz default; positive input outside the documented range is limited to
the nearest boundary. The model's timbral calibration is centered on the
recorded 369 Hz reference condition, so the permitted input range should not
be interpreted as validation of equal timbral accuracy across the complete
range.

## Repository contents

```text
ICSC2026_Tupipa_complete_commented_source.csd
data/recording_tables/
  mono_h02.dat ... mono_h14.dat
  mono_muted_pick.wav
audio_examples/
  01_complete_model_stereo.wav
  02_core_string_stereo.wav
  03_body_response_stereo.wav
  04_plectrum_contact_stereo.wav
  05_friction_noise_stereo.wav
audit/
  derived_control_constraints.csv
  layer_energy_summary.csv
  pluck_position_summary.csv
  recording_intensity_group_summary.csv
listening_report.txt
CITATION.cff
LICENSE
RIGHTS.md
UPLOAD_CHECKLIST.md
```

The 13 `.dat` files and `mono_muted_pick.wav` are runtime dependencies and
must remain at the relative paths shown above. The audio examples, audit CSVs,
and listening report are supporting materials and are not required to render
the instrument.

## Evidence and scope

The audit tables contain aggregate summaries used in the paper. The listening
report documents an informal qualitative calibration stage; it is not a
statistical perceptual experiment. The materials concern one instrument, one
principally calibrated open-string condition, isolated plucks, three recorded
intensity groups, and three measured plucking positions. The repository does
not claim validation of every pitch, dynamic, or playing technique.

## Authors

- Yao Ma, Sichuan Conservatory of Music
- Wanjun Yang, Sichuan Conservatory of Music

## Citation

Please cite the ICSC2026 paper above and the software metadata in
`CITATION.cff`. Add the final proceedings pages and DOI when they become
available.

## License

Public distribution permission for the included recordings and audio examples
is documented in `RIGHTS.md`. The custom license in `LICENSE` allows use,
modification, redistribution, and incorporation into other projects, provided
that users notify Yao Ma before the first redistribution or incorporation and
clearly attribute the authors, paper, and original repository. One notice per
project is sufficient, and approval or a reply is not required. Because this
notice is a mandatory condition, this is a source-available license rather
than an Open Source Initiative approved open-source license.
