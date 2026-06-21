# Sylphx Dart

`SylphxAI/dart` provides shared Dart and Flutter development guidelines,
analysis configuration, lint package scaffolding, and Melos-based validation
for Sylphx Dart projects.

## Lifecycle

- State: `active`
- Layer: `tooling`
- Machine manifest: [`.doctrine/project.json`](./.doctrine/project.json)

## Goals

- Provide repo-owned Dart and Flutter guidelines under `docs/`.
- Own the `sylph_lints` shared lint package scaffold and package metadata.
- Keep Melos bootstrap, formatting, analysis, and test guidance coherent for
  Dart repositories that intentionally consume this surface.

## Non-Goals

- This repo does not own every downstream Dart application, Flutter product,
  app-specific analysis exception, or release process.
- This repo does not own enterprise doctrine or package release infrastructure.

## Boundary

This repository owns shared Dart guidance and reusable lint/config surfaces.
Downstream projects should consume documented guidelines, `analysis_options`,
and future published packages rather than copying private repo assumptions.

Product-specific Flutter behavior, app workflows, UI decisions, and deployment
policy belong in the downstream product repositories.

## Public Surfaces

- Guidelines: `docs/`
- Root Dart configuration: `analysis_options.yaml`, `pubspec.yaml`, `melos.yaml`
- Shared lint package scaffold: `packages/sylph_lints/`
- CI workflow: `.github/workflows/ci.yml`

## Delivery

Pull requests, pushes, and merge queue refs run Dart CI on self-hosted runners:
Melos bootstrap, format, analyze, and tests. There is no package publication
workflow at this baseline. Production proof for shared config changes requires
the Dart CI plus representative consumer validation before broad adoption.
