# Dart Project

The Dart repository is an active shared foundation for SylphLab Dart and
Flutter projects. It owns Dart guidelines, Melos workspace configuration, and
the `sylph_lints` package source.

## Goals

- Own shared Dart and Flutter guidance under `docs/`.
- Own the `sylph_lints` package source and Melos validation workflow.
- Keep shared lint/style/testing rules tenant-neutral and safe for downstream
  projects to adopt.

## Non-Goals

- Do not own downstream application behavior, app-store releases, or
  product-specific Flutter architecture.
- Do not publish Dart packages until package release intent, publisher identity,
  and proof are documented.
- Do not encode customer-specific rules into shared Dart guidelines.

## Boundaries

Owned contexts are shared Dart documentation, workspace configuration,
`sylph_lints`, formatting/analyze/test CI, and package-source maintenance.
Downstream apps consume this repo through documented guidelines or explicit
package dependencies.

Public surfaces:

- Guidelines under `docs/`.
- `sylph_lints` package under `packages/sylph_lints`.
- Melos workspace in `melos.yaml`.
- Required branch context `build`.

## Delivery

Current CI model: `legacy-ci`. Required branch context is `build`.

Deploy path: no deploy or package publish workflow is declared. CI validates
formatting, analysis, and tests through Dart/Melos on the self-hosted Sylphx
runner. Production proof is CI plus downstream package/guideline adoption
evidence when consumers update.

Recovery class: `source-revertable` for documentation and package source while
no package publish workflow is declared.

## References

- Machine manifest: `.doctrine/project.json`
- Guidelines: `docs/`
- Package source: `packages/sylph_lints/pubspec.yaml`
- Workspace config: `melos.yaml`
- CI: `.github/workflows/ci.yml`
- Doctrine: https://github.com/SylphxAI/doctrine
