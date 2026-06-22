# Agent Instructions

Engineering doctrine: https://github.com/SylphxAI/doctrine

Before changing behavior, read:

1. `PROJECT.md` for this repository's goal, lifecycle, boundary, public
   surfaces, delivery proof, and package posture.
2. `.doctrine/project.json` for the machine-readable project manifest.
3. The central doctrine entry points: `AGENTS.md`, `PRINCIPLES.md`, and
   `ADR.md` in `SylphxAI/doctrine`.
4. The triggered `standards/*.md` files from doctrine for the task.

This file is a thin runtime adapter. Keep enterprise policy in
`SylphxAI/doctrine`; keep only repo-local commands, hazards, and validation
notes here.

## Local Commands

- `dart pub get` - install root dependencies.
- `dart pub global activate melos ^6.0.0` - activate Melos.
- `melos bootstrap` - bootstrap packages.
- `melos run format` - verify formatting.
- `melos run analyze` - analyze packages.
- `melos run test` - run package tests.

## Local Hazards

- This repo defines shared Dart guidelines and lint packages. Changes can affect
  many downstream Flutter/Dart projects.
- No package publish workflow is declared at adoption time; do not publish
  `sylph_lints` until package release control is explicit.
- Keep general Dart standards tenant-neutral and avoid app-specific rules.

## Reporting

When reporting work, separate local diff, PR state, CI state, merge state,
package publish state if any, and downstream adoption proof.
