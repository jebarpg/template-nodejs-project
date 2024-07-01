gh issue create --title "Configure package.json, renovate.json and set your environment variables" --body "## package.json Configurations

- [ ] Change \`name\` to \`{your_project_name}\`
- [ ] Add \`description\`
- [ ] Add \`main\` entry point e.g. index.js or index.ts
- [ ] Change \`keywords\` to suit your project
- [ ] Change \`license\` to suit your project
- [ ] Change \`author\` to the correct author name
### Configure cz-gitmoji-adapter
In addition to the following sections you may follow this configuration guide [cz-gitmoji-adapter Configuration Options](https://github.com/jebarpg/cz-gitmoji-adapter?tab=readme-ov-file#configuration-options)
- [ ] Add/Remove 'scopes' appropriate for your project inside \`config\`->\`cz-gitmoji-adapter\`->\`scopes\` array
- [ ] Change \`questions\` texts inside \`config\`->\`cz-gitmoji-adapter\`->\`questions\` array
**OPTIONS** are \`scope\`, \`body\`, \`issues\`, \`breaking\`, \`type\` and \`subject\`
---
- [ ] Change \`repository\` URL to your project URL
- [ ] Change \`bugs\`->\`url\` to your project's URL
- [ ] Change \`homepage\`->\`url\` to your project's homepage URL
- [ ] Set appropriate \`publishConfig\`->\`access \`of the repo
**OPTIONS** are \`public\` for public repos and \`restricted\` for private repos
- [ ] Evaluate additonal fields to be added to your package.json file as needed by reading [Configuring package.json](https://docs.npmjs.com/cli/v10/configuring-npm/package-json)
## renovate.json Configurations
- [ ] change \`timezone\` to your timezone
- [ ] change \`schedule\` to run renovate at a time you deem fit. 
- [ ] change assignees to your @ GitHub handle / username
## Set your environment variables
- [ ] Create a [Personal Access Token (PAT)](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/managing-your-personal-access-tokens#creating-a-fine-grained-personal-access-token) on GitHub
- [ ] Create a GPG key and add it to your GitHub account.
- [ ] Follow [these instructions](https://help.knapsack.cloud/article/83-github-personal-access-tokens-local-dev) to add the following environment variables to either your ~/.bashrc or system environment variables on windows
	- [ ] export GH_TOKEN={your_github_PAT}
	- [ ] export GIT_AUTHOR_NAME={your_gpg_author_name}
	- [ ] export GIT_AUTHOR_EMAIL={your_gpg_email_address}
	- [ ] export GIT_COMMITTER_NAME={your_gpg_author_name}
	- [ ] export GIT_COMMITTER_EMAIL={your_gpg_email_address}
These will allow for semantic release to work by running the commandline script \`npm run release\` outside of a CI environment
and also allow you to push commits to your new repo without having to enter your username and PAT every time.

---

After you have updated the package.json file and your environment variables you'll be ready to make commits and releases to your new repo using the `npm run cm` and `npm run release` scripts.

Next run the following:

    npm install
    npm run cm
        Select commit  type `init  🎉  Initial commit.`
        Select scope [none]
        Type a short initial commit message i.e. "Initial repo configurations for conventional commits and semantic releases"
        Type a longer initial commit message i.e. "Filled out the package.json file with project specific information and details. Setup environment variables to allow for the conventional commits and semantic release to properly work"
        Press Enter to skip the breaking change message
        Type in #1 and press enter. This will close issue #1 (which you just finished from the steps above) when you make your
        first release.

    If your default branch is set as `main` run
    git push -u origin main

    Else If your default branch is set as `master` run
    git push -u origin master

    Otherwise if you have a different name for your default branch then change the name after origin appropriately.
" --assignee @me --label "config"

gh issue create --title "Configure .esdoc.json" --body "## .esdoc.json Configurations
Inside \`plugins\`->"name": "esdoc-plugin-require-coverage"->\`option\`fill in the following:
- [ ] \`required\` set this to a number between 0 and 100 for percentage of require documentation coverage
- [ ] consider adding additional plugins provided at [esdoc-plugins](https://github.com/esdoc/esdoc-plugins/tree/master)
e.g. esdoc-brand-plugin to add branding to your esdocs
---
Close this issue once all task are completed
" --assignee @me --label "config"

gh issue create --title "Configure .gitignore" --body "## Configure .gitignore
You may want to uncomment the following lines to exclude them in your repository
- [ ] 'lines 23:#coverage'
- [ ] 'lines 92:#dist'
---
Close this issue once all task are completed
" --assignee @me --label "config"

gh issue create --title "Update commitlint.config.ts" --body "## Update commitlint.config.ts
- [ ] Update the commitlint.config.ts \`type-enum\` array 
	- [ ] Delete the types inside \`type-enum\` array
	- [ ] Run \`node src\cz-type-extract.js\`
	- [ ] Copy the list of types out of \`typesArray.txt\` in your repository directory
	- [ ] Paste in the types inside \`type-enum\` array
    - [ ] Delete \`typesArray.txt\`
---
Close this issue once all task are completed
" --assignee @me --label "update"

gh issue create --title "Update LICENSE" --body "## Update LICENSE
- [ ] Add the appropriate LICENSE text to the LICENSE file for your project
---
Close this issue once all task are completed
" --assignee @me --label "update,documentation"


gh issue create --title "Update README.md" --body "## Update README.md
- [ ] Update the README.md text with your projects appropriate needs
- [ ] Run badge-generator.js and copy the badges.txt text into README.md

---

Next run the following:
    npm run cm
        Select commit  type ` docs  📝  Writing docs. `
        Select scope [readme.md]
        Type a short message i.e. "Updated README.md with badges and information"
        Type a longer message i.e. "Ran the badge generator script and updated the documentation for this repo"
        Press Enter to skip the breaking change message
        Type in #6 and press enter. This will close issue #6 (which you just finished from the steps above) when you make your
        first release.

Finally run the release script to release your changes and close all the initial issues.
    npm run release
" --assignee @me --label "documentation,update,release"
