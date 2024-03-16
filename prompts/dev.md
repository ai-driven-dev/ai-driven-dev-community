# Dev prompts / shortcuts for developers using AI `:dev`

- [Create \& ¨Merge a documentation from a GitHub repository 🧙 `:devMergeDocumentation`](#create--merge-a-documentation-from-a-github-repository--devmergedocumentation)

## Create & ¨Merge a documentation from a GitHub repository 🧙 `:devMergeDocumentation`

- Use [Download GitHub Directory](https://download-directory.github.io/) to download the repository as a zip file
- Unzip the file
- Run the following command to create a `.txt` documentation file
- Then, upload that file in the AI and ask for a summary

```bash
find . -type f -name '*.md' -o -name '*.mdx' -exec cat {} + > documentation.txt
```
