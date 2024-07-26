# Errors Warnings and Fixes

## Errors

<!--
### Error:

### Fix:
-->

### Error: Commitlint Failed Messages

```bash
husky — pre-commit script failed (code 1)

⧗ input: testing without cz
✖ Your commit should start with gitmoji code. Please check the emoji code on https://gitmoji.dev/. [start-with-gitmoji]
✖ subject may not be empty [subject-empty]
✖ type may not be empty [type-empty]

✖ found 3 problems, 0 warnings
ⓘ Get help: https://github.com/conventional-changelog/commitlint/#what-is-commitlint
```

### Fix: Commitlint Failed Messages

Run the following command to change the last commit message

```bash
nano .git/COMMIT_EDITMSG
```

Then modify the message to have the correct format.

Then press `CTRL+X`, then `y`, then `Enter` to save.

### Error: Releasing empty files error Message

```bash
RequestError [HttpError]: Validation Failed: {“resource”:”ReleaseAsset”,”code”:”custom”,”field”:”size”,”message”:”size must be greater than or equal to 1"}
```

### Fix: Releasing empty files error Message

You need to add some text to the file to make the file size larger than 0 KB. I tried releasing just an empty .gitkeep file for testing purposes and the fix was to add a single character into the file. I used \* on the first line and saved. This error didn't show up anymore afterwords.

### Error: Release branches are invalid

```bash
ERELEASEBRANCHES The release branches are invalid in the `branches` configuration.
```

### Fix: Release branches are invalid

Check that you are on the same branch as you have in your release.config.ts file if not then do the following:

```bash
git checkout -b {branch_name_in_your_release.config.ts_file}
```

```bash
# This template I uses 'main' as a release branch, in which case you would use:
git checkout -b main
#otherwise if you use a different release branch you would use it's name instead here.
```

### Error: Missing GitHub token

```bash
Fails with missing GitHub token when — dry-run and — no-ci

✘ An error occurred while running semantic-release: Error: Command failed with exit code 128: git ls-remote — heads https://github.com/{username}/{repo_name}

stderr: ‘remote: Support for password authentication was removed on August 13, 2021.\n’ +

SemanticReleaseError: No GitHub token specified.
```

### Fix: Missing GitHub token

#### Set environment variables for current session

To set the environment variables for just this session run:

```bash
export GH_TOKEN={your_GitHub_PAT}
```

If you are using `gpg` to sign your commits then you will also need to set the following environment variables:

```bash
export GIT_AUTHOR_NAME={your_gpg_author_name}; export GIT_AUTHOR_EMAIL={your_gpg_email_address}; export GIT_COMMITTER_NAME={your_gpg_author_name}; export GIT_COMMITTER_EMAIL={your_gpg_email_address}
```

- Change {your_gpg_email_address} to the address you used when setting up your gpg key.

- Change {your_gpg_author_name} to the author name you used with your gpg key.

#### Set the environment variables for all future session

You will need to edit either your `$HOME/.bashrc` by running the following:

```bash
nano ~/.bashrc
```

At the end of the `.bashrc` file add the export statements below like so:

```bash
export GH_TOKEN={your_GitHub_PAT}

export GIT_AUTHOR_NAME={your_gpg_author_name}
export GIT_AUTHOR_EMAIL={your_gpg_email_address}
export GIT_COMMITTER_NAME={your_gpg_author_name}
export GIT_COMMITTER_EMAIL={your_gpg_email_address}
```

Press `CTRL+X` then `Y` then `Enter` to save the changes. Next restart your terminal so the changes apply. Or run the command:

```bash
source ~/.bashrc
```

### Error: Missing or invalid credentials

```bash
Missing or invalid credentials.
     Error: connect EACCES /run/user/1000/vscode-git-6032650f81.sock
      at PipeConnectWrap.afterConnect [as oncomplete] (node:net:1595:16) {
       errno: -13,
       code: 'EACCES',
       syscall: 'connect',
       address: '/run/user/1000/vscode-git-6032650f81.sock'
     }
     Missing or invalid credentials.
     Error: connect EACCES /run/user/1000/vscode-git-6032650f81.sock
      at PipeConnectWrap.afterConnect [as oncomplete] (node:net:1595:16) {
       errno: -13,
       code: 'EACCES',
       syscall: 'connect',
       address: '/run/user/1000/vscode-git-6032650f81.sock'
     }
     remote: No anonymous write access.
     fatal: Authentication failed for 'https://github.com/USERNAME/REPO_NAME.git/'
```

### Fix: Missing or invalid credentials

You must [create a PAT](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/managing-your-personal-access-tokens#creating-a-fine-grained-personal-access-token) on github first
then create the .git-credentials file and paste in your information on the first line:

```plaintext
https://{your_github_username}:{your_personal_access_token}@github.com
```

Then run the following command in your git repository directory

```bash
git config credential.helper 'store --file ~/.git-credentials'
```

## Warnings

### Warning: Husky not set as executable

```bash
hint: The '.husky/_/pre-push' hook was ignored because it's not set as executable.
hint: You can disable this warning with `git config advice.ignoredHook false`.
hint: The '.husky/_/pre-commit' hook was ignored because it's not set as executable.
hint: You can disable this warning with `git config advice.ignoredHook false`.
.
.
.
```

### Fix: Husky not set as executable

Run the following command in your git repository:

```bash
chmod +x .husky/_/*
```
