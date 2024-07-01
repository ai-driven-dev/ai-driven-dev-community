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