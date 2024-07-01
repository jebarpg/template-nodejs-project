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

      let content = '';
      for (const i in json) {
        const string = json[i].name;
        content += `        '${string}',\n`;
      }
      content += "        'chore'";
      writeFile('typesArray.txt', content, (err) => {
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
