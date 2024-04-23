#!/bin/bash

FILE_NAME='all-in-one.md'
VERSION=`node -p "require('./package.json').version"`
DATE=`date +%Y-%m-%d-%H:%M:%S`

echo "Exporting markdown files for version $VERSION"

typedoc --options typedoc.json --plugin typedoc-plugin-markdown --out documentation

cd documentation/

find . -name '*.md' ! -name "${FILE_NAME}" -exec cat {} \; > "${FILE_NAME}"

# Write the version and date to the top of the file

sed -i '' '1s/^/---\n\n/' "${FILE_NAME}"
sed -i '' '1s/^/date: '$DATE'\n/' "${FILE_NAME}"
sed -i '' '1s/^/version: '$VERSION'\
/' "${FILE_NAME}"
sed -i '' '1s/^/---\n/' "${FILE_NAME}"

# source: scripts/project-documentation-typescript.sh