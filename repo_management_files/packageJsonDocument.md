# Script Documentation

Here each script is explained what it's functionality is as well as example use case(s). There are also notes about which situations you will want to update a script as your project's dependencies and development evolves. These are marked with the tag **_MONITOR_**. The issues.sh or issues.bat file creates an issue which has a list of these **_MONITOR_** scripts in a checklist format for you to regularly review and make sure they are up to date. Explanations for when you should check them are in the issue task list as well so that you can remember what type of updates will need to modify the scripts.

It is recommended to never close this issue so that you always are reviewing the issue after making updates to your project.

## Script syntax and format information

### Naming convention to group a set of related tasks

package.json scripts use the format `base_script_name:flag_or_option_name` what this means typically is that there are different versions of a base script that adds an additional option or flag or argument or parameter to a base_script already create. For example: the `build` script has two different targets environments that the app.ts file can be built for. So we have a default `build` for a node environment and an additional `build:bun` script to build for a bun environment. We could also make it more explicit by having scripts `build:node` and `build:bun`. Feel free to rename and adapt these scripts to how you deep appropriate for your project.

### Script flag -- --flag options syntax

package.json scripts use to need an additional -- before you would pass an argument in your script. This is no longer the case. But for backwards compatibility it is sometimes used for when you are testing versions of node.js which still needed this extra `--`. For example when running older versions node.js in your action matrixes with GitHub actions CI/CD.

### Useful tricks

#### Continuing on errors in scripts with '&&'

package.json scripts sometimes will error out and not complete the entire script because an error in part of the script kill or stop it from completing. This situation is sometimes desired, but a lot of times it is preferred to have the script continue even if a part of the script has returned errors. For example scripts that use the `&&` operation to run multiple commands in series one after another will sometimes stop if any one of those commands returns an error. A couple of tricks to mitigate and prevent the script from stopping mid execution is to pipe the outputs to xargs `command1 | xargs  && command2`) or to use **_or_** true `command1 || true && comand 2`. The `prepare` script for husky is an example of the **_or_** true technique and the `dep:check` script is an example of the pipe to xargs technique.

#### Silencing outputs to prevent terminal output congestion

Another technique is to silence the output of a command so that it doesn't congest your terminal space. To do this we add to the end of a command (and after all of the command arguments) `>/dev/null`. Here is how it works:
`>`: This is the redirection operator. It takes the output from the command on its left and sends it to the location specified on its right.
`/dev/null` : This is the path to the null device. The null device is a special file that discards any data written to it, effectively making the output disappear.
The `build` script is an example which uses this technique.

## Scripts explanations

**_Monitor_** - Means the script may need updates for specific types of changes to your project.

```bash
"build": "bun build ./src/app.ts --target node --outdir ./dist >/dev/null",
```

```bash
"build:bun": "bun build ./src/app.ts --target bun --outdir ./dist >/dev/null",
```

```bash
"build:deps": "npm list --omit=dev | xargs -0 | awk '{print $2}' | grep \"^[a-z@]\" | sed -'s/(^[a-zA-Z@].*?)(@.*)/\\1/g' > d",
```

```bash
"build:deps:badges": "bun run build:deps && cat d | xargs npx update-badge --behind && rm dd",
```

```bash
"build:devdeps1": "npm list --include=dev | xargs -0 | awk '{print $2}' | grep \"^[a-z@]\" sed -E 's/(^[a-zA-Z@].*?)(@.*)/\\1/g' > dd",
```

```bash
"build:devdeps2": "grep -Fxv -f <(cat d) <(cat dd) | awk '{print $1 > \"dd\"}'",
```

```bash
"build:devdeps:badges": "bun run build:deps && bun run build:devdeps1 && bun rubuild:devdeps2 && cat dd | xargs npx update-badge --behind  && rm d dd",
```

```bash
"clean": "rm -rf node_modules",
```

```bash
"cm": "git pull && git add . && bun git:all &&  cz",
```

```bash
"dep:check": "bunx upgradeps && npm outdated | xargs && bunx npm-check-updates && buncheck-dependencies && bun ./node_modules/npm-check/bin/cli.js -s | xargs && npm audit",
```

```bash
"dep:skip": "bunx upgradeps -s semantic-release",
```

```bash
"dep:update:all": "bunx upgradeps -u -f -s semantic-release,eslint",
```

```bash
"dep:update:check": "bunx upgradeps",
```

```bash
"dep:update:skip": "bunx upgradeps -u -s",
```

```bash
"depcheck": "bunx depcheck | xargs",
```

```bash
"dev": "bun i && bun run build:bun && bun concurrently -k \"bun run hot-reload\" \"bun rulive-reload\" \"bun run format:watch\" \"bun run test:watch:fast\"",
```

```bash
"dev:all": "git pull && bun run dev:pre && bun run lint:quick && bun run lint:ox && bun rudev:build",
```

```bash
"dev:build": "bun run build && bun run docs && bun dev",
```

```bash
"dev:linux": "bun i && bun concurrently -k \"bun run hot-reload & xdg-open http://127.0.1:3000\" \"bun run dev:post\"",
```

```bash
"dev:mac": "bun i && bun concurrently -k \"bun run hot-reload & open http://127.0.0.1:3000\\"bun run dev:post\"",
```

```bash
"dev:node": "bun i && bun run build && bun concurrently -k \"nodemon ./dist/server.jlocalhost 8080\" \"bun run live-reload\" \"bun run format:watch\" \"bun run test:watch:fast\"",
```

```bash
"dev:post": "bun concurrently -k \"bun run live-reload\" \"bun run format:watch\" \"bun rutest:watch:fast\"",
```

````bash
"dev:pre": "bun run upgrade:full && bun rebuild && bun run dep:update:all && echo \"YOU CAALSO RUN npm-check TO SEE ADDITIONAL DEPENDENCY UPDATES\" && npm i && bun run depcheck && burun prune:mod && bun run ``` bash
````

license:summary && bun format && bun run security",

````


``` bash
"dev:win": "bun i && bun concurrently -k \"bun run hot-reload & start http://127.0.0.1:3000\\"bun run dev:post\"",
````

```bash
"dev:wsl": "bun i && bun concurrently -k \"bun run hot-reload & wslview http://127.0.1:3000\" \"bun run dev:post\"",
```

```bash
"docs": "echo building typedocs; bun typedoc --validation.notDocumented --plugitypedoc-plugin-coverage >/dev/null",
```

```bash
"format": "sort-package-json && bun prettier --write . --cache --cache-strategy metadat--log-level log | grep -v \"unchanged\" | xargs",
```

```bash
"format:git:modified": "bun prettier --write $(git diff --name-only --diff-filter d | grep ts$' | xargs)",
```

```bash
"format:watch": "bunx onchange \"**/*\" -- prettier --write --cache --cache-strategy metadat--ignore-unknown {{changed}}",
```

```bash
"git:added": "git diff --cached --name-only --diff-filter=A",
```

```bash
"git:all": "git diff --cached --name-status --diff-filter=ACDMRTUXB*",
```

```bash
"git:modified": "git diff --cached --name-only --diff-filter=M",
```

```bash
"hot-reload": "bun --hot ./src/app.ts",
```

```bash
"license:check": "bunx license-checker | grep 'licenses:' | sort -u",
```

```bash
"license:summary": "bunx license-checker --summary",
```

```bash
"lint": "bun eslint . --ext .ts",
```

```bash
"lint:fix": "bun run lint -- --fix",
```

```bash
"lint:output": "bun run lint -- --output-file lint-results.txt",
```

```bash
"lint:ox": "bun run oxlint",
```

```bash
"lint:quick": "find . -type d \\( -path ./node_modules -o -path ./coverage -o -path ./dist --path ./docs \\) -prune -o -type f \\( -iname \\*.js -o -iname \\*.ts \\) -print | xargs /usbin/quick-lint-js | xargs",
```

```bash
"live-reload": "five-server public/",
```

```bash
"package:dep": "npm ls",
```

```bash
"prepare": "husky || true",
```

```bash
"prod": "npm prune --omit=dev && bun prune:mod && NODE_ENV=production bun run ./src/app.ts",
```

```bash
"prune:mod": "bunx modclean -r -n default:safe --ignore=\"depcheck,component.jso@semantic-release/changelog\"",
```

```bash
"push": "git push",
```

```bash
"rebuild": "bun run clean && bun install && bun run build",
```

```bash
"rebuild:bun": "bun run clean && bun install && bun run build:bun",
```

```bash
"reinstall": "bun run clean && bun install",
```

```bash
"release": "semantic-release --no-ci",
```

```bash
"release:ci": "semantic-release",
```

```bash
"security": "bunx snyk code test --all-projects || echo 'Issues were found please run: bunsnyk code test' && bunx snyk test --all-projects || echo 'Issues were found please run: bunsnyk test'",
```

```bash
"security:fix": "snyk fix",
```

```bash
"test": "NODE_OPTIONS=--experimental-vm-modules node_modules/jest/bin/jest.js",
```

```bash
"test:changed": "bun run test -- --onlyChanged",
```

```bash
"test:clear": "bun run test --clearCache",
```

```bash
"test:dev": "bun run test:clear && bun run test:watch",
```

```bash
"test:fast": "NODE_OPTIONS=--experimental-vm-modules node_modules/jest/bin/jest.j--maxWorkers=1 --collectCoverage=false",
```

```bash
"test:watch": "bun run test -- --watch",
```

```bash
"test:watch:fast": "bun run test:fast -- --watch",
```

```bash
"upgrade": "sudo bun i -g n && sudo bun i -g npm@latest && sudo n latest && hash -r && buupgrade",
```

```bash
"upgrade:clean": "rm -rf node_modules && rm bun.lockb package-lock.json && bun pm cache rm &sudo bun i -g n && sudo n prune || true && sudo npm uninstall -g n && sudo rm -rf /usr/locan && sudo rm -f /usr/local/bin/node",
```

```bash
"upgrade:full": "bun run upgrade:clean && bun run upgrade"
```
