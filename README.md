# Template NodeJS Project

## How to use

NOTE: It is best to have created a github organization to use this template. There are a few features which require it. Namely publishing of typedocs to github_pages and the dependabot security features for organizations. Start reading [Creating a new organization from scratch](https://docs.github.com/en/organizations/collaborating-with-groups-in-organizations/creating-a-new-organization-from-scratch) to learn.

This is my recommended way to use this template repo. By doing this you'll be able to use the gitmoji commitizen adapter to add your initial commit message with a gitmoji icon which will later be used to create the changelog automatically.

*If you don't care about using gitmoji on your initial commit then you can simply click the `Use this template` button and select `Create a new repository`. [Here are the instructions](https://docs.github.com/en/repositories/creating-and-managing-repositories/creating-a-repository-from-a-template) to use this GitHub Template. Otherwise continue reading.*

First create a new empty github repository **WITHOUT** a `README.md`, `LICENSE`, or `.gitignore` we will add these later. Adding an *'optional description'* is fine at this point.

Then run the following commands in the directory you will be working in:

```bash
mkdir {your_empty_repo_name}
git clone https://github.com/jebarpg/nodejs-project.git {your_empty_repo_name}
cd {your_empty_repo_name}
rm -rf .git
git init
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

To create all the issues needed to finish setting this repo up.

Open up issue #1 on your `https://github.com/{username}/{your_empty_repo_name}/issues` and complete all the tasks.
