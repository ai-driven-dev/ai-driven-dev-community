
# 🖥️ AI Driven Dev - "Documentation" Prompts (`:doc`)

- [🚛 Extraction](#-extraction)
  - [Extract online documentation `:docScrapWebsite`](#extract-online-documentation-docscrapwebsite)
  - [Merge markdown documentation together `:docMergeMarkdownDocumentation`](#merge-markdown-documentation-together-docmergemarkdowndocumentation)
  - [Extract project code documentation](#extract-project-code-documentation)
    - [TypeScript  `:docExtractProjectDocumentationTS`](#typescript--docextractprojectdocumentationts)
- [📄 Documentation](#-documentation)
  - [Search in the documentation from URL `:docSearchURL`](#search-in-the-documentation-from-url-docsearchurl)
- [💬 Comments](#-comments)
  - [Check that comments match code actions `:docCommentCheckCode`](#check-that-comments-match-code-actions-doccommentcheckcode)
  - [Generate full file comments `:docCommentFullFile`](#generate-full-file-comments-doccommentfullfile)
  - [Find inconsistencies using documentation `:docCommentFindInconsistencies`](#find-inconsistencies-using-documentation-doccommentfindinconsistencies)
  - [Give me an example of the usage of this function `:codeCommentProvideExample`](#give-me-an-example-of-the-usage-of-this-function-codecommentprovideexample)

## 🚛 Extraction

### Extract online documentation `:docScrapWebsite`

**Description**:

If you documentation is online, you can extract it and use it in your LLM.

**How to use the prompt**:

| Usage                   | Context                                                    |
|-------------------------|------------------------------------------------------------|
| 🚀 **Author**           | [@alexsoyes](https://beacons.ai/alexsoyes)                 |
| 🤖 **Tool**             | A [custom scrapper](../../scripts/scraper/README.md), [Download GitHub Directory](https://download-directory.github.io/) |
| 🔍 **Context**          | On a website that contain documentation.                   |
| 📦 Dependencies         | Scrapy or equivalent                                       |
| ⚠️ Warning               | Scrap websites is not as safe as downloading official doc. |

**Usage:**

```shell
scrapy crawl html_spider -a domain=nuqs.47ng.com -a path=docs -a useMarkdown=True
```

### Merge markdown documentation together `:docMergeMarkdownDocumentation`

**Description**:

In order to upload a full documentation to your LLM, you need to merge all markdown files together.

**How to use the prompt**:

| Usage                   | Context                                                    |
|-------------------------|------------------------------------------------------------|
| 🚀 **Author**           | [@alexsoyes](https://beacons.ai/alexsoyes)                 |
| 🤖 **Tool**             | `find` command in UNIX system                              |
| 🔍 **Context**          | Locate on the directory where you downloaded your docs.    |
| ⚠️ Warning               | Merging in `.txt` helps the LLM to understand better. **Format matters**. |

**Code**:

```shell
find . -type f -name '*.md*' -exec cat {} \; > "[[name]]"-documentation.txt

# source: scripts/generated/merge-documentation.sh
```

### Extract project code documentation

#### TypeScript  `:docExtractProjectDocumentationTS`

**Description:**

Using `typedoc` to generate the documentation for your TypeScript project.

**How to use the prompt**:

| Usage                   | Context                                                    |
|-------------------------|------------------------------------------------------------|
| 🚀 **Author**           | [@alexsoyes](https://beacons.ai/alexsoyes)                 |
| 🤖 **Tool**             | Typedoc                                                    |
| 🔍 **Context**          | Use it a the root directory of your project.               |
| 📦 **Dependencies**     | `npm install -D typedoc typedoc-plugin-markdown`           |

**Usage**:

```json
{
  "doc:export": "curl -s https://raw.githubusercontent.com/alexsoyes/ai-driven-dev-community/main/scripts/project-documentation-typescript.sh | sh",
}
```

**Script:**

```bash
#!/bin/bash

DOCUMENTATION_DIR=${DOCUMENTATION_DIR:-'documentation/'}
FILE_NAME=${FILE_NAME:-'project-documentation.txt'}
VERSION=${VERSION:-$(node -p "require('./package.json').version")}
DATE=`date +%Y-%m-%d-%H:%M:%S`
COMMIT_CHANGES=$1

echo "Exporting markdown files for version $VERSION"

typedoc --options typedoc.json --plugin typedoc-plugin-markdown --out "${DOCUMENTATION_DIR}"

cd "${DOCUMENTATION_DIR}"

find . -name '*.md*' ! -name "${FILE_NAME}" -exec cat {} \; > "${FILE_NAME}"

# Write the version and date to the top of the file

sed -i '' '1s/^/---\n\n/' "${FILE_NAME}"
sed -i '' '1s/^/date: '$DATE'\n/' "${FILE_NAME}"
sed -i '' '1s/^/version: '$VERSION'\
/' "${FILE_NAME}"
sed -i '' '1s/^/---\n/' "${FILE_NAME}"

cd ..

if [ "$COMMIT_CHANGES" == "--commit" ]; then
  git add "${DOCUMENTATION_DIR}"
  git commit -m "docs: update project documentation for version $VERSION"
fi

# source: scripts/generated/project-documentation-typescript.sh
```

## 📄 Documentation

### Search in the documentation from URL `:docSearchURL`

**Description**:

Search specific information in the documentation from a URL.

**How to use the prompt**:

| Usage                   | Context                                                    |
|-------------------------|------------------------------------------------------------|
| 🚀 **Author**           | [@alexsoyes](https://beacons.ai/alexsoyes)                 |
| 🤖 **Tool**             | ChatGPT                                                    |
| 🔍 **Context**          | Grab the URL you want to query.                            |

**Prompt:**

```text
I need you to read the following documentation.

"[[documentation url]]"

Based on that documentation, can you:

"[[want you want to do]]"

Please provide the best step by step way to it.

For each step, detail your explanation with the proper code.
```

## 💬 Comments

### Check that comments match code actions `:docCommentCheckCode`

**Description**:

Check the code to make sure that the comments are matching the code actions.

**How to use the prompt**:

| Usage                   | Context                                                    |
|-------------------------|------------------------------------------------------------|
| 🚀 **Author**           | [@alexsoyes](https://beacons.ai/alexsoyes)                 |
| 🤖 **Tool**             | Github Copilot                                             |
| 🔍 **Context**          | In your editor.                                            |

**Prompt**:

```text
Check that comments are matching code actions.

- If so, just reply "OK ✅" without saying anything else.
- If not, update the comments to match the code with a concise and simple one describing what the inner code is doing.

Rules:
  - Go to line on new sentence.
  - Check for comment params to match function's params.
  - Check if "TODO" are still relevant, if not, remove them. You must be very sure that they are not relevant to remove them.
```

### Generate full file comments `:docCommentFullFile`

**Description**:

Generate a full file comments to describe what the file is doing precisely.

**How to use the prompt**:

| Usage                   | Context                                                    |
|-------------------------|------------------------------------------------------------|
| 🚀 **Author**           | [@alexsoyes](https://beacons.ai/alexsoyes)                 |
| 🤖 **Tool**             | Github Copilot                                             |
| 🔍 **Context**          | In your editor.                                            |

**Prompt**:

```text
Add code documentation for this file: #file

- Add top file documentation to describe what the file is doing.
- Add or update documentation for functions.
- Add documentation within function if necessary.
- Move comments to the right place if necessary.
```

### Find inconsistencies using documentation `:docCommentFindInconsistencies`

**Description**:

Check a produce code against the documentation to find inconsistencies.

**How to use the prompt**:

| Usage                   | Context                                                    |
|-------------------------|------------------------------------------------------------|
| 🚀 **Author**           | [@alexsoyes](https://beacons.ai/alexsoyes)                 |
| 🤖 **Tool**             | Github Copilot, ChatGPT                                    |
| 🔍 **Context**          | Where to use it, on which file etc.                        |
| ⚠️ Warning               | If doc if too long, GitHub Copilot will not work.         |

**Prompt**:

```text
This document file needs to be implemented correctly: #file

Here is the implementation that must respect the documentation (surrounded by "---" delimiters):

---
[[code]]
---

Please list inconsistencies in a bullet point list, finding things that are not matching the documentation. 
```

### Give me an example of the usage of this function `:codeCommentProvideExample`

**Description**:

Provide example of using a function directly in your top level code comments.

**How to use the prompt**:

| Usage                   | Context                                                    |
|-------------------------|------------------------------------------------------------|
| 🚀 **Author**           | [@alexsoyes](https://beacons.ai/alexsoyes)                 |
| 🤖 **Tool**             | Github Copilot                                             |
| 🔍 **Context**          | In your editor.                                            |

**Prompt**:

```text
Provide an example of the usage of this function, input and output and add it in code comments.
```
