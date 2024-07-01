#!/bin/bash

EXCLUDE_DIRS=$(grep -v '^#' .gitignore | grep -v '^$' | sed 's|^/||' | sed 's|/$||' | sed 's/\*//g' | sed -e :a -e '$!N; s/\n/|/; ta')
EXCLUDE_DIRS="${EXCLUDE_DIRS}|project-structure|.git"

if [ -n "$EXCLUDE" ]; then
  EXCLUDE_DIRS="${EXCLUDE_DIRS}|$EXCLUDE"
fi

CURRENT_DIR=$(basename "$(pwd)" | sed -e 's/[^[:alnum:]]/-/g' | tr -s '-' | tr A-Z a-z)
FILE_NAME_STRUCTURE="project-structure-${CURRENT_DIR}.txt"

echo "🗄️ Excluded directories: $EXCLUDE_DIRS"
echo "# Project structure for $CURRENT_DIR directory" | tee "$FILE_NAME_STRUCTURE" && tree --du -h -aIif "$EXCLUDE_DIRS" >> "$FILE_NAME_STRUCTURE"

# source: scripts/generated/project-structure.sh