# Changelog

# [v1.1.2](https://github.com/jebarpg/template-nodes-project/compare/v1.1.1...v1.1.2) (2024-08-18)

## 🐛 Fixing a bug

- [`70022de`](https://github.com/jebarpg/template-nodes-project/commit/70022de) fix(tsconfig.json): error with types fixed
- [`b0791f1`](https://github.com/jebarpg/template-nodes-project/commit/b0791f1) fix(package.json): fixed the testing with no test issue
- [`d2c9477`](https://github.com/jebarpg/template-nodes-project/commit/d2c9477) fix(.github/workflows/test.yml): used env instead of token for codecov
- [`360126d`](https://github.com/jebarpg/template-nodes-project/commit/360126d) fix(.github/workflows/test.yml): using recommended codecov version 4.0.1 now
- [`c959546`](https://github.com/jebarpg/template-nodes-project/commit/c959546) fix(.github/workflows/test.yml): removed secret, not required for public repos
- [`422515e`](https://github.com/jebarpg/template-nodes-project/commit/422515e) fix: fixed testing coverage and configuration workflow
- [`c2ecd75`](https://github.com/jebarpg/template-nodes-project/commit/c2ecd75) fix(.github/workflows/test.yml): using v3 of codecov action
- [`53c95c3`](https://github.com/jebarpg/template-nodes-project/commit/53c95c3) fix(.github/workflows/test.yml): added token to test
- [`b9528f6`](https://github.com/jebarpg/template-nodes-project/commit/b9528f6) fix: trying with env token and v4
- [`c9b790f`](https://github.com/jebarpg/template-nodes-project/commit/c9b790f) fix: test
- [`fc47a4d`](https://github.com/jebarpg/template-nodes-project/commit/fc47a4d) fix(.github/workflows/test.yml): added additional config options to test workflow
- [`56eee7b`](https://github.com/jebarpg/template-nodes-project/commit/56eee7b) fix(.github/workflows/test.yml): removed directory config from workflow
- [`83e5179`](https://github.com/jebarpg/template-nodes-project/commit/83e5179) fix(package.json): fixed toggling delete of coverage.svg
- [`8f3bd2d`](https://github.com/jebarpg/template-nodes-project/commit/8f3bd2d) fix(package.json): fixed cm to run npm install to update lockfile
- [`afe80b0`](https://github.com/jebarpg/template-nodes-project/commit/afe80b0) fix: updated my $PATH variable. Check for bug
- [`7ce4a3f`](https://github.com/jebarpg/template-nodes-project/commit/7ce4a3f) fix: fixed script to use &#x27; instead of &#x60;

## 🚀 Deploying stuff

- [`0cdf749`](https://github.com/jebarpg/template-nodes-project/commit/0cdf749) deploy(typedoc.json): deploying docs

## 🚨 Removing linter warnings

- [`b90bc84`](https://github.com/jebarpg/template-nodes-project/commit/b90bc84) lint(.vscode/settings.json): adding repo specific words to workspace cSpell.words array

## 💚 Fixing CI Build

- [`73278c0`](https://github.com/jebarpg/template-nodes-project/commit/73278c0) fix-ci(.github/workflows/test.yml): removing some optional configs in test.yml
- [`343767d`](https://github.com/jebarpg/template-nodes-project/commit/343767d) fix-ci(package.json): created script without | xargs in depcheck
- [`07da093`](https://github.com/jebarpg/template-nodes-project/commit/07da093) fix-ci(.github/workflows/depcheck.yml): saved changes to used depcheck:ci script
- [`999b432`](https://github.com/jebarpg/template-nodes-project/commit/999b432) fix-ci(package.json): added informational message to depcheck:ci script

## ⬆️ Upgrading dependencies

- [`432f411`](https://github.com/jebarpg/template-nodes-project/commit/432f411) upgrade(.github/workflows/test.yml): upgrade codecov/codecov-action@v4 to codecov/codecov-action@v4.5.0

## 👷 Adding CI build system

- [`d5b6c3c`](https://github.com/jebarpg/template-nodes-project/commit/d5b6c3c) ci(.husky/pre-commit): adding pre-commit hook using validate-branch-name
- [`9c28113`](https://github.com/jebarpg/template-nodes-project/commit/9c28113) ci(.github/workflows/depcheck.yml): adding depcheck to github action workflows
- [`914bf54`](https://github.com/jebarpg/template-nodes-project/commit/914bf54) ci(.husky/pre-commit): adding depcheck:ci to pre-commit hook
- [`49526bc`](https://github.com/jebarpg/template-nodes-project/commit/49526bc) ci(.husky/pre-commit): added pretty-quick to pre-commmit and to .depcheckrc.json

## 🔧 Changing configuration files

- [`8d79053`](https://github.com/jebarpg/template-nodes-project/commit/8d79053) config(.depcheckrc.json): added two devDependencies to ignore

# [v1.1.1](https://github.com/jebarpg/template-nodes-project/compare/v1.1.0...v1.1.1) (2024-07-21)

## 🚑 Critical hotfix

- [`c4cfc33`](https://github.com/jebarpg/template-nodes-project/commit/c4cfc33) quickfix: fixed issues with lint errors

## 💚 Fixing CI Build

- [`9dce690`](https://github.com/jebarpg/template-nodes-project/commit/9dce690) fix-ci: fixed ci/cd workflows setting up bun

## 📦 Updating compiled files or packages

- [`41487be`](https://github.com/jebarpg/template-nodes-project/commit/41487be) dep-up(package-lock.json): ran npm install to update package-lock.json
- [`997e83e`](https://github.com/jebarpg/template-nodes-project/commit/997e83e) dep-up(package.json): updated eslint-plugin-node to eslint-plugin-n

## 💡 Documenting source code

- [`0f69005`](https://github.com/jebarpg/template-nodes-project/commit/0f69005) docs-code(repo_management_files/extractfilescopes.js): renamed and documented extracfilescopes.js

# [v1.1.0](https://github.com/jebarpg/template-nodes-project/compare/v1.0.0...v1.1.0) (2024-07-21)

## ✨ Introducing new features

- [`69511c0`](https://github.com/jebarpg/template-nodes-project/commit/69511c0) feature: created generic commit message markdown and a helper script for it
- [`f61325c`](https://github.com/jebarpg/template-nodes-project/commit/f61325c) feature(repo_management_files/extractfilescopes.js): created an automatic scope updater script
- [`b0a1ae3`](https://github.com/jebarpg/template-nodes-project/commit/b0a1ae3) feature(repo_management_files/extractfilescopes.js): created an automatic scope updater script

## 💚 Fixing CI Build

- [`b657a35`](https://github.com/jebarpg/template-nodes-project/commit/b657a35) fix-ci(commitlint.config.ts): swapped to new parser opts to use fix-ci and ci/cd types

# v1.0.0 (2024-07-20)

## 🐛 Fixing a bug

- [`838ca0b`](https://github.com/jebarpg/template-nodes-project/commit/838ca0b) fix: test

## ✨ Introducing new features

- [`cda175b`](https://github.com/jebarpg/template-nodes-project/commit/cda175b) feature: added all updated files

# v1.0.0 (2024-07-20)

## 🐛 Fixing a bug

- [`838ca0b`](https://github.com/jebarpg/template-nodes-project/commit/838ca0b) fix: test

## ✨ Introducing new features

- [`cda175b`](https://github.com/jebarpg/template-nodes-project/commit/cda175b) feature: added all updated files
