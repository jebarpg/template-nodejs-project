# Files with Gitmojis

These are the files which either have [gitmoji Unicode icons or gitmoji Shortcode](https://gitmoji.dev/specification#shortcode-vs-unicode-format)

NOTE: Click a `file` to open it in a tab in Visual Studio Code.

## File List

- All [`.github/workflows/*.yml`](../.github/workflows) files
- [`repo_management_files/genericCommitMessages.md`](./genericCommitMessages.md)
- [`repo_management_files/labels.sh`](./labels.sh)
- [`CHANGELOG.md`](../CHANGELOG.md)
- [`default-template.hbs`](../default-template.hbs)
- [`README.md`](../README.md)
- [`README-api.md`](../README-api.md)
- [`release.config.ts`](../release.config.ts)
- [`renovate.json`](../renovate.json)

NOTE: [`commitlint.config.ts`](../commitlint.config.ts) has references to gitmoji's but not actual gitmojis in it. It should still be evaluated because it's `type-enum` is the name of the types of commits associated to individual gitmojis.
