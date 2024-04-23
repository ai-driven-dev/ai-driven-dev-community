#!/bin/bash

EXCLUDE_DIRS=$(grep -v '^#' .gitignore | grep -v '^$' | tr '\n' '|')
CURRENT_DIR=$(basename "$(pwd)")
FILE_NAME_STRUCTURE="project-structure-${CURRENT_DIR}.txt"

echo -e "Project structure for $CURRENT_DIR directory\n" | tee "$FILE_NAME_STRUCTURE" && tree -I "$EXCLUDE_DIRS" >> "$FILE_NAME_STRUCTURE"

# source: scripts/project-structure.sh