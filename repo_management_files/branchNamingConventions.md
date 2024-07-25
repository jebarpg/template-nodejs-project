# Branch Naming Convention

NOTICE:

* Please review [`release.config.ts` (click)](../release.config.ts) to configure the release branches appropriately for your project.
* This repository uses [validate-branch-name](https://www.npmjs.com/package/validate-branch-name) which gets ran as a pre-commit using [husky](https://github.com/typicode/husky) Git Hooks to keep branch naming consistent with the following conventions. Please review and customize the rules in the [package.json validate-branch-name](../package.json#L128) to make sure they fit your project's needs and specifications.
* Dependabot and Renovate are also used for automated package updating and are included in the rules for validate-branch-name.

This document outlines the branch naming conventions for our project to ensure consistency and clarity in our Git workflow, especially for GitHub Actions CI/CD pipelines. The conventions align with the use of Gitmoji, Commitizen, Conventional Changelog, and Semantic Release.

## General Rules

* **Use Lowercase Letters**: Branch names should be in lowercase letters.
* **Use Hyphens (-) as Separators**: Use hyphens to separate words within branch names.
* **Avoid Special Characters**: Do not use special characters other than hyphens. Avoid spaces, slashes, underscores, etc.
* **Be Descriptive but Concise**: Branch names should be clear and descriptive but not excessively long.

## Branch Categories

### Feature Branches

**Prefix**: `feature/`

**Purpose**: For new features and enhancements.

**Format**:

`feature/<short-description>`

**Example**:
`feature/add-user-login`

### Fix Branches

**Prefix**: `Fix/`

**Purpose**: For bug fixes.

**Format**:
`fix/<short-description>`

**Example**:
`fix/fix-login-error`

### Hotfix Branches

**Prefix**: `hotfix/`

**Purpose**: For critical hotfixes that need to be released immediately.

**Format**:

`hotfix/<short-description>`

**Example**:

`hotfix/patch-security-vulnerability`

### Release Branches

**Prefix**: `release/`

**Purpose**: For preparing a new production release.

**Format**:

`release/<version>`

**Example**:

`release/1.0.0`

### Experimental Branches

**Prefix**: `experimental/`

**Purpose**: For experimental features or ideas that may not be included in the main project.

**Format**:

`experimental/<short-description>`

**Example**:

`experimental/prototype-new-ui`

### Chore Branches

**Prefix**: `chore/`

**Purpose**: For non-feature updates like refactoring, updating dependencies, etc.

**Format**:

`chore/<short-description>`

**Example**:

`chore/update-dependencies`

### Documentation Branches

**Prefix**: `docs/`

**Purpose**: For updates and additions to documentation.

**Format**:

`docs/<short-description>`

**Example**:

`docs/update-readme`

### Dependabot Branches

**Prefix**: `dependabot/`

**Purpose**: For automated dependabot package updates.

**Format**:

`dependabot/<short-description>`

**Example**:

`dependabot/npm_and_yarn/semantic-release/github-10.0.6`

### Renovate Branches

**Prefix**: `renovate/`

**Purpose**: For automated renovate package updates.

**Format**:

`renovate/<short-description>`

**Example**:

`renovate/prettier-plugin-organize-imports-4.x`

## Integration with Semantic Release

Ensure branch names align with Semantic Release configuration to automate versioning and changelog generation. Typically, releases will be made from the `main` branch or specific `release/*` branches.

By following these conventions, we ensure a smooth and efficient workflow for our CI/CD pipeline, improve collaboration, and maintain a clean and organized repository.
