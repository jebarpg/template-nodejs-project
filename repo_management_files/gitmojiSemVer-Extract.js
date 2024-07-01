/* eslint-disable security/detect-object-injection */
/* eslint-disable guard-for-in */
/* eslint-disable no-restricted-syntax */
import { https } from 'https';
import { fs } from 'fs';

const url =
  'https://raw.githubusercontent.com/carloscuesta/gitmoji/master/packages/gitmojis/src/gitmojis.json';

https
  .get(url, (res) => {
    let body = '';
    res.on('data', (chunk) => {
      body += chunk;
    });
    res.on('end', () => {
      try {
        const json = JSON.parse(body);
        const jsonObject = '';
        for (const attributename in json) {
          jsonObject[attributename] = json[attributename];
          if (attributename === 'gitmojis') {
            const major = [];
            const minor = [];
            const patch = [];
            const na = [];
            for (let i = 0; i < json[attributename].length; i++) {
              const gitmoji = json[attributename][i];
              const string = `'${gitmoji.code}', // ${gitmoji.description}`;
              switch (gitmoji.semver) {
                case 'major':
                  major.push(string);
                  break;
                case 'minor':
                  minor.push(string);
                  break;
                case 'patch':
                  patch.push(string);
                  break;
                default:
                  na.push(string);
              }
            }
            let content = 'major: [\n';
            for (const i of major) {
              content += `  ${i}\n`;
            }
            content += '],\nminor: [\n';
            for (const i of minor) {
              content += `  ${i}\n`;
            }
            content += '],\npatch: [\n';
            for (const i of patch) {
              content += `  ${i}\n`;
            }
            content += '],\n// LEFT OUT AS THESE ARE N/A\n';
            for (const i of na) {
              // check for last element to skip adding newline
              if (na.slice(-1)[0] === i) content += `// ${i}`;
              else content += `// ${i}\n`;
            }
            fs.writeFile('releaseRulesArray.txt', content, (err) => {
              if (err) {
                console.error(err);
              }
            });
          }
        }
      } catch (error) {
        console.error(error.message);
      }
    });
  })
  .on('error', (error) => {
    console.error(error.message);
  });
