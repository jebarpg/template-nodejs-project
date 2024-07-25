# Errors Warnings and Fixes

## Errors

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
