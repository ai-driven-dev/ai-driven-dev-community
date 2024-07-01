curl -sSf https://raw.githubusercontent.com/alexsoyes/ai-driven-dev-community/main/scripts/aiddc/install.sh | bash
```

### Website scraper

A python scraper to save HTML / Markdown content from your best websites.

Full documentation available in the [scraper directory](./scripts/scraper/README.md).

Requirements:

- [Python 3+](https://www.python.org/downloads/) - To run the scraper.

### Private prompts

Having your personal prompts in a huge Notion doc or shared with your team?

**You can easily make them available privately in your computer with Espanso.**

1. Add your prompts in `markdown`in the directory `./prompts/private/`
2. Take a look at the [contributing guide](./CONTRIBUTE.md) to create a perfect prompt.
3. Start the project: `npm i && npm start`

Enjoy your private prompts!

### VSCode snippets

We created a list of snippets we daily use as a frontend TypeScript developer.

![VSCode Snippet](images/vscode-snippet.gif)

AI makes way much easier code generation.

> But sometimes, when you exactly know what you need, you do not necessary need a Gen-AI to write obvious code for you.

Thus, AI can be mistaken, as a developer, you are the master of your code structure.

Feel free to use them!

**Languages**:

- [TypeScript](./resources/snippets/vscode/typescript.json)

**Libraries**:

- [React](./resources/snippets/vscode/typescriptreact.json)

**Installation**:

You can install them easily with the following script:

```bash
#!/bin/bash

# TODO: add OS support
# TODO: merge with existing files

PATH_SOURCE=$(pwd)/vscode
PATH_DESTINATION=~/Library/Application\ Support/Code/User/snippets

# Check if both source and destination exist
if [ ! -d "${PATH_SOURCE}" ]; then
  echo "Source directory does not exist: ${PATH_SOURCE}"
  exit 1
fi

if [ ! -d "${PATH_DESTINATION}" ]; then
  echo "Destination directory does not exist: ${PATH_DESTINATION}"
  exit 1
fi

# For each file in source, copy it in the destination, but if exists, rename it with a .bak extension and current date
for file in $(ls "${PATH_SOURCE}"); do
  filename=$(basename $file)
  if [ -f "${PATH_DESTINATION}/$filename" ]; then
    mv "${PATH_DESTINATION}/$filename" "${PATH_DESTINATION}/$filename.bak.$(date +%Y%m%d)"
  fi

  cp -v "${PATH_SOURCE}/${filename}" "${PATH_DESTINATION}/${filename}"
done

# source: scripts/generated/snippets-install-osx.sh