# Template NodeJS Project

## How to use

NOTE: It is best to have created a github organization to use this template. There are a few features which require it. Namely the dependabot security features for organizations. Start reading [Creating a new organization from scratch](https://docs.github.com/en/organizations/collaborating-with-groups-in-organizations/creating-a-new-organization-from-scratch) to learn.

This is my recommended way to use this template repo. By doing this you'll be able to use the gitmoji commitizen adapter to add your initial commit message with a gitmoji icon which will later be used to create the changelog automatically.

*If you don't care about using gitmoji on your initial commit then you can simply click the `Use this template` button and select `Create a new repository`. [Here are the github template instructions](https://docs.github.com/en/repositories/creating-and-managing-repositories/creating-a-repository-from-a-template) to use this GitHub Template. Otherwise continue reading.*

First create a new empty github repository **WITHOUT** a `README.md`, `LICENSE`, or `.gitignore` we will add these later. Adding an *'optional description'* is fine at this point.

```bash
mkdir {your_empty_repo_name}
git clone https://github.com/jebarpg/template-nodejs-project.git {your_empty_repo_name}
cd {your_empty_repo_name}
rm -rf .git package-lock.json docs/typedocs/* CHANGELOG.md
git config --global init.defaultBranch main
git init
```

Then run the following command in the directory you will be working in:

```bash
git remote add origin https://github.com/{username}/{your_empty_repo_name}.git
```

Next install GitHubs cli by following [these instructions](https://github.com/cli/cli?tab=readme-ov-file#installation) for your OS **OR** check out the [GitHub CLI](https://cli.github.com/) website
Then run either the

```bash
./repo_management_files/issues.sh #(for Linux/MacOS)
```

or

```bash
./repo_management_files/issues.bat #(for Windows OS)
```

To create all the issues needed to finish setting this repo up. Look at issue #1 to and follow the directions.







-----------------------------------------------------
PUT THIS INTO ISSUE #1

In package.json file do the following:
    - [ ] find and replace all occurances of `template-nodes-project` with your repo's name
    - [ ] set version to 1.0.0
    - [ ] remove and replace keywords with your projects keywords
    - [ ] configure or remove the funding to your specifics
    - [ ] set the license
    - [ ] review the validate-branch-name->pattern to see if the branches are approriate for your project
    - [ ] review the cz-gitmoji-adapter->scopes list to see if the enteries are approritate for your project
    - [ ] change publishConfig->access to `public` or `restricted` (for private)

```bash
bun i
bun cm
```

In build.yml do the following:

```bash
bun i
bun cm
```

In depcheck.yml do the following:

```bash
bun i
bun cm
```

In docs.yml do the following:

```bash
bun i
bun cm
```

In lint.yml do the following:

```bash
bun i
bun cm
```

In pr.yml do the following:

```bash
bun i
bun cm
```

In release.yml do the following:

```bash
bun i
bun cm
```

In test.yml do the following:

```bash
bun i
bun cz
```

for the commit type select: ` init              🎉  Initial commit. `
for the scope type select; [none]
for the short description: initalizing repo configuration
for the longer description: made all the initial changes to package.json to get the template up and running
for BREAKING CHANGE: Press Enter to skip
for issues closed: #1
NOTE: if you haven't run the issue.sh you can press enter to skip the issues

```bash
git push --set-upstream origin main
```

```
git config --global user.email "you@example.com"
git config --global user.name "Your Name"
```

Open up issue #1 on your `https://github.com/{username}/{your_empty_repo_name}/issues` and complete all the tasks.
and run 

```bash
npm install
```
in order to get the package-lock.json

Before running `bun release`
'Please make sure to create a [GitHub personal token](https://help.github.com/articles/creating-a-personal-access-token-for-the-command-line) and to set it in the `GH_TOKEN` or `GITHUB_TOKEN` environment variable on your CI environment. The token must allow to push to the repository `{your_username/{your_empty_repo_name}.`',

