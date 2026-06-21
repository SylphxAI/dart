# Repository Agent Instructions

This repository follows the central doctrine in
[SylphxAI/doctrine](https://github.com/SylphxAI/doctrine).

Before changing behavior, read [PROJECT.md](./PROJECT.md) and
[.doctrine/project.json](./.doctrine/project.json). Keep enterprise policy in
doctrine; keep only repo-local Dart guidance facts here.

Useful validation for Dart guidance or package changes:

- `dart pub global activate melos ^6.0.0`
- `melos bootstrap`
- `melos run format`
- `melos run analyze`
- `melos run test`

Do not put product-specific Flutter behavior, app UI policy, deployment
assumptions, or consumer-specific analyzer exceptions into this shared guidance
repo. Consumer repositories should use documented public surfaces.
