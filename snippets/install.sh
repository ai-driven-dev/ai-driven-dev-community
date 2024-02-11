#!/bin/bash

PATH_SOURCE=~/Projects/ai-driven-dev-community/snippets/vscode
PATH_DESTINATION=~/Library/Application\ Support/Code/User/snippets

# For each file in source, copy it in the destination, but if exists, rename it with a .bak extension and current date
for file in $(ls "${PATH_SOURCE}"); do
  filename=$(basename $file)
  if [ -f "${PATH_DESTINATION}/$filename" ]; then
    mv "${PATH_DESTINATION}/$filename" "${PATH_DESTINATION}/$filename.bak.$(date +%Y%m%d)"
  fi

  cp -v "${PATH_SOURCE}/${filename}" "${PATH_DESTINATION}/${filename}"
done