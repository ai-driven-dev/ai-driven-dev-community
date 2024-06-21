#!/bin/sh

. "$(dirname "$0")/_.sh"

# Last 10 previous commit message from the user.
PREV_COMMIT_MSG=$(git log -10 --pretty=format:%s)

# Current staged git changes.
CHANGES=$(git diff --staged)

# If there is no changes, exit.
if [ -z "$CHANGES" ]; then
    error "No changes to commit"
    exit 1
fi

PROMPT=$(cat <<EOF
Goal:
Generate a commit message to summarize the changes made.

Rules:
- Should be formatted in Conventional Commit.
- Remain consistent with the last commit messages if possibles.
- Focus on describing the changes made, not the implementation details.

Previous commit messages:
$PREV_COMMIT_MSG

Current git changes:
$CHANGES
EOF
)

ask_ai "$PROMPT"
