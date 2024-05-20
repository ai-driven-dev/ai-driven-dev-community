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

# source: scripts/snippets-install-osx.sh