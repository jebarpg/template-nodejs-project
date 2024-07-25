# Periodic Audit Checklist

Some files I don't list such as .eslintrc.json or .gitignore even though they might be reasonable to audit. The reason I don't list these types of files is that they normally are incidental updated. That is to say when there is a need to add something to them then they get updated. That being said if you would like to be completely thorough in say a monthly audit then I would recommend evaluating all the files in your repo as you see fit. This is a list which I feel is worth keeping an eye on so that I don't forget certain pieces which require a manual look over.

## Files and Sections to review

NOTE: You can click `file/paths` to open that file and referenced arrays to open and highlight that section of the file.

- [ ] Run `bun dev:all` weekly on Sunday and fix any issues it reports.
- [ ] Make sure all workflows yaml files in [`../.github/workflows`](../.github/workflows/) have emoji's at the beginning of all their `name` sections. Consider using ***[ChatGPT](https://chatgpt.com/share/b54be984-4344-4e8f-bb56-c39595a52fa4)*** `Prompt: 'Generate an emoji to represent the following text: "Check out Git repository"'` to generate an emoji(s) for each `name` string.
- [ ] [`.husky/pre-commit`](../.husky/pre-commit)
  - [ ] check to make sure you are running all the scripts you still want to have running during a pre-commit.
- [ ] [`.vscode/settings.json`](../.vscode/settings.json)
  - [ ] check the [`cSpell.words`](../.vscode/settings.json#L2) array to make sure all the listed words are still relevant to your project.
- [ ] [`repo_management_files/auditChecklist.md`](./auditChecklist.md)
  - [ ] Search this document for '#L\d+' (In Visual Studio Code click `Ctrl+F` then enter `#L\d+` then make sure to click the button to the right ***`.*`*** `'Use Regular Expressions'`). Step through each searched result an make sure that the link goes to the correct referenced section of the file.
- [ ] Run checks on emoji lists
  - [ ] Make sure that these are all updated with the list of emojis listed from [gitmoji](https://github.com/carloscuesta/gitmoji/blob/master/packages/gitmojis/src/gitmojis.json) and [cz-gitmoji-adapter](https://github.com/jebarpg/cz-gitmoji-adapter/blob/main/lib/types.json)
  - [ ] [`repo_management_files/cz-emoji-type-extract.js`](./cz-emoji-type-extract.js)
  - [ ] [`repo_management_files/cz-type-extract.js`](./cz-type-extract.js)
  - [ ] [`repo_management_files/genericCommitMessages.md`](./genericCommitMessages.md)
  - [ ] [`repo_management_files/gitmojiSemVer-Extract.js`](./genericCommitMessages.md)
  - [ ] [`repo_management_files/labels.sh`](./labels.sh)
  - [ ] [`default-template.hbs`](../default-template.hbs)
    - [ ] Make sure all the sections are updated with [`repo_management_files/cz-emoji-template-extract.js`](./cz-emoji-template-extract.js)
- [ ] [`repo_management_files/extractFileScopes.js`](./extractFileScopes.js)
  - [ ] Check the [`repo_management_files/extractFileScopes.js 'exclude'`](./extractFileScopes.js#L17) array to make sure you are excluding any auto generated directories or files from your scope, as well as any files you don't want to include in your commit scope messages.
- [ ] [`repo_management_files/filesWithGitmojis.md](./filesWithGitmojis.md)
  - [ ] Add any new files that also include gitmojis to keep track of. i.e. ISSUE_TEMPLATES.yml, PULL_REQUEST_TEMPLATES.yml etc.
- [ ] [`repo_management_files/packageJsonDocument.md`](./packageJsonDocument.md) & [`package.json 'scripts'`](../package.json#L61)
  - [ ] make sure both the [`package.json 'scripts'`](../package.json#L61) and [`packageJsonDocument.md`](./packageJsonDocument.md) still have proper updated comments/documentation for each script.
  - [ ] Make sure all the script names in [`packageJsonDocument.md`](./packageJsonDocument.md) still link to the correct line numbers.
- [ ] [`repo_management_files/branchNamingConventions.md`](./branchNamingConventions.md) Make sure the reference to [`package.json 'validate-branch-name'`](../package.json#L128) is still on the correct line number in the link, both here and in the `branchNamingConventions` file.
- [ ] [`.depcheckrc.json`](../.depcheckrc.json)
  - [ ] Check to make sure all the listed [`ignores`](../.depcheckrc.json#L2) still are valid or need removing. Do this by checking your [`package.json 'dependencies'`](../package.json#L224) and [`package.json 'devDependencies'`](../package.json#L229) to see if they still exist in your projects dependencies.
- [ ] [`commitlint.config.ts`](../commitlint.config.ts)
  - [ ] Make sure the [`commitlint.config.ts 'typeEnum'`](../commitlint.config.ts#L32) is updated with the output of the [`repo_management_files/cz-type-extract.js`](./cz-type-extract.js) script.
- [ ] [`package.json 'keywords'`](../package.json#L5)
  - [ ] Make sure the 'keywords' is still reflective of your project.
- [ ] [`package.json 'config cz-gitmoji-adapter scopes'`](../package.json#L138) array
  - [ ] Make sure your project manually added scopes are updated with your project's specific scopes scope requirements.
    ***NOTE***: The [`extractFileScopes.js`](./extractFileScopes.js) script gets run before the cz commit command so that any new files are added to the scope array. This ensures that you have a fresh updated version of the file scopes before the cz commit command. This prevents you from making a commit and not having that new file(s) added to your commit scopes list. If you do not want to have any files added to your scopes list and want only the scopes you manually added then you will want to change the [`package.json script 'cm:merge'`](../package.json#L70) and remove the '`node repo_management_files/extractFileScopes.js &&`' part.
- [ ] [`README.md`](../README.md)
  - [ ] Update any additional information related to changes you have made to the project.
- [ ] [`release.config.ts 'releaseRules'`](../release.config.ts#L47)
  - [ ] Make sure the release rules are updated with the [`gitmojiSemVer-Extract.js`](./gitmojiSemVer-Extract.js) script.
- [ ] [`renovate.json 'packageRules'`](../renovate.json#35)
  - [ ] Make sure the ***`matchPackageNames`*** sections still need to be disabled or if they can finally be updated without breaking the project's build or CI/CD scripts. To do this try enabling each `matchPackageNames` one at a time and then doing a `bun release:dry` for the `semantic-release` and for the `eslint` run `bun lint`.
  - [ ] Additionally add new packages to `matchPackageNames` that need to be kept locked or `"enabled": false` on that version for your project to work.

## Miscellaneous
