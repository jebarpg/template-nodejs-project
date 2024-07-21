/* eslint-disable security/detect-object-injection */
/* eslint-disable guard-for-in */
/* eslint-disable no-restricted-syntax */
import { get } from 'https';
import { writeFile } from 'fs';

const url =
  'https://raw.githubusercontent.com/jebarpg/cz-gitmoji-adapter/main/lib/types.json';

get(url, (res) => {
  let body = '';
  res.on('data', (chunk) => {
    body += chunk;
  });
  res.on('end', () => {
    try {
      const json = JSON.parse(body);

      let content = '<details>\n  <summary>Scoped</summary>\n\n';
      for (const i in json) {
        const emoji = json[i].emoji;
        const name = json[i].name;
        content += '```plaintext\n';
        content += `${emoji} ${name}(scope): \n`;
        content += '```\n\n';
      }
      content += `</details>\n\n<details>\n  <summary>Non-Scope</summary>\n\n`;
      for (const i in json) {
        const emoji = json[i].emoji;
        const name = json[i].name;
        content += '```plaintext\n';
        content += `${emoji} ${name}: \n`;
        content += '```\n\n';
      }
      content += `</details>\n`;
      writeFile('emojiTypesCommitMessages.txt', content, (err) => {
        if (err) {
          console.error(err);
        }
      });
    } catch (error) {
      console.error(error.message);
    }
  });
}).on('error', (error) => {
  console.error(error.message);
});
