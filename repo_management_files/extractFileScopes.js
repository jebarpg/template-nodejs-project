import { readdir, stat, writeFile, readFile } from 'fs';
import * as path from 'path';
import { dirname } from 'path';
import { fileURLToPath } from 'url';

const __filename = fileURLToPath(import.meta.url);
const __dirname = dirname(__filename);

// Project root directory, back one directory from repo_management_files.
// normalize the 'directoryPath' string to go from the form `/absolute_path/template-nodes-project/repo_management_files/../`
// to `/absolute_path/template-nodes-project/` to subtract from the beginning of the filePath
const directoryPath = path.normalize(__dirname + '/../');

// Exclude auto generated files and directories.
const exclude = ['.dccache', '.git', 'node_modules', 'dist', 'coverage', 'CHANGELOG.md', 'bun.lockb', 'docs'];

/**
 * Subtracts all occurrences of a sub-string from a main string.
 * 
 * This function takes two strings as input: a main string and a sub-string.
 * It removes all occurrences of the sub-string from the main string.
 * 
 * @param {string} mainString - The main string from which sub-string will be removed.
 * @return {string} The resulting string after removing all occurrences of the sub-string.
 */
function subtractStrings(mainString) {
    // Create a regular expression to match all occurrences of the subString 
    const regex = new RegExp(directoryPath, 'g');

    // Replace all occurrences of subString with an empty string

    return mainString.replace(regex, '').toLowerCase();
}


/**
 * Lists all files and directories in a directory excluding specified items.
 * @param {string} dirPath - The directory path to list items from.
 * @param {Array<string>} excludeList - The list of file and directory names to exclude.
 * @returns {Promise<Array<string>>} - A promise that resolves to the list of file paths.
 */
function listFilesAndDirectories(dirPath, excludeList) {
    const fileScopes = [];

    return new Promise((resolve, reject) => {
        readdir(dirPath, (err, files) => {
            if (err) {
                return reject(`Unable to read directory: ${err.message}`);
            }

            const fileStatPromises = files.map(file => {
                const filePath = path.join(dirPath, file);

                return new Promise((resolve, reject) => {
                    if (excludeList.includes(file)) {
                        return resolve();
                    }

                    stat(filePath, (err, stats) => {
                        if (err) {
                            return reject(`Unable to stat file: ${err.message}`);
                        }

                        if (stats.isDirectory()) {
                            // Recursively list the contents of the directory
                            listFilesAndDirectories(filePath, excludeList).then(innerFileScopes => {
                                fileScopes.push(...innerFileScopes);
                                resolve();
                            }).catch(reject);
                        } else {
                            // File
                            fileScopes.push(filePath);
                            resolve();
                        }
                    });
                });
            });

            Promise.all(fileStatPromises).then(() => {
                resolve(fileScopes);
            }).catch(reject);
        });
    });
}


/**
 * Updates the scopes array in the package.json file.
 *
 * @param {string} packageJsonPath - The path to the package.json file.
 * @param {string[]} newScopes - The new scopes array to set.
 */
function updateScopesInPackageJson(packageJsonPath, newScopes) {
    // Read the package.json file
    readFile(packageJsonPath, 'utf8', (err, data) => {
        if (err) {
            console.error('Error reading package.json:', err);
            return;
        }

        try {
            // Parse the JSON data
            const packageJson = JSON.parse(data);

            // Update the scopes array
            if (packageJson.config && packageJson.config['cz-gitmoji-adapter']) {
                packageJson.config['cz-gitmoji-adapter'].scopes = newScopes;
                //console.log(newScopes);
            } else {
                console.error('cz-gitmoji-adapter config not found in package.json');
                return;
            }

            // Convert the modified JSON object back to a string
            const updatedPackageJson = JSON.stringify(packageJson, null, 2);

            // Write the updated package.json back to the file
            writeFile(packageJsonPath, updatedPackageJson, 'utf8', (err) => {
                if (err) {
                    console.error('Error writing package.json:', err);
                    return;
                }

                console.log('Successfully updated the scopes array in package.json');
            });
        } catch (err) {
            console.error('Error parsing package.json:', err);
        }
    });
}

listFilesAndDirectories(directoryPath, exclude)
    .then(fileScopes => {
        updateScopesInPackageJson(directoryPath + 'package.json', fileScopes.map(subtractStrings));
    })
    .catch(err => {
        console.error('Error:', err);
    })
