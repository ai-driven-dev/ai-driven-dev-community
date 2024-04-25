# replace output.pdf and input.pdf with the correct file names

gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/screen -dNOPAUSE -dQUIET -dBATCH -sOutputFile="[[output.pdf]]" "[[input.pdf]]"
```

### Generate your project documentation

#### TypeScript  `:ragGenerateProjectDocumentationTS`

**Description:**

Using `typedoc` to generate the documentation for your TypeScript project.

**How to use the prompt**:

| Usage                   | Contexte                                                   |
|-------------------------|------------------------------------------------------------|
| 📦 Dependencies     | `npm install -D typedoc typedoc-plugin-markdown` |

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
FILE_NAME=${FILE_NAME:-'all-in-one.md'}
VERSION=${VERSION:-$(node -p "require('./package.json').version")}
DATE=`date +%Y-%m-%d-%H:%M:%S`

echo "Exporting markdown files for version $VERSION"

typedoc --options typedoc.json --plugin typedoc-plugin-markdown --out "${DOCUMENTATION_DIR}"

cd "${DOCUMENTATION_DIR}"

find . -name '*.md' ! -name "${FILE_NAME}" -exec cat {} \; > "${FILE_NAME}"

# Write the version and date to the top of the file

sed -i '' '1s/^/---\n\n/' "${FILE_NAME}"
sed -i '' '1s/^/date: '$DATE'\n/' "${FILE_NAME}"
sed -i '' '1s/^/version: '$VERSION'\
/' "${FILE_NAME}"
sed -i '' '1s/^/---\n/' "${FILE_NAME}"

cd ..
git add "${DOCUMENTATION_DIR}"
git commit -m "docs: update project documentation for version $VERSION"

# source: scripts/project-documentation-typescript.sh