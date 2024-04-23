const fs = require('fs');

const bashCodeBlockRegex = /```bash\n((?:.*\n)*?# source: .+)\n```$/gm;

/**
 * Extracts the scripts from the given file path.
 * @param {string} filePath
 * @returns {void}
 */
function extractScripts(filePath) {
  const content = fs.readFileSync(filePath, 'utf8');
  let match;

  while ((match = bashCodeBlockRegex.exec(content)) !== null) {
    const source = match[1];
    const sourcePath = source.match(/# source: (.*)/)[1];

    // Only write the script to a file if a source path was found
    if (sourcePath) {
      console.log(`📦 Extracting script from ${filePath} to ${sourcePath}`);
      if (fs.existsSync(sourcePath)) {
        console.log(`🔀 Updating...`);
        fs.unlinkSync(sourcePath);
      }
      fs.writeFileSync(sourcePath, `${source}`);
    }
  }
}

module.exports = extractScripts;