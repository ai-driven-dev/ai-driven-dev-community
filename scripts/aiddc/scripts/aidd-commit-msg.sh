#!/bin/sh

. "$(dirname "$0")/_.sh"

# NOTICE
# --------------------
notice "[aidd-commit-msg]: Preparing commit message"

# PARAMETERS
# --------------------
# Last 10 previous commit message from the user.
PREV_COMMIT_MSG=$(git log -10 --pretty=format:%s)

# Current staged git changes.
CHANGES=$(git diff --staged)

# If there is no changes, exit.
if [ -z "$CHANGES" ]; then
    error "No changes to commit"
    exit 1
fi

# PROMPT
# --------------------
PROMPT=$(cat <<EOF
Goal:
Generate only a commit message to summarize the changes made.

Rules:
- Should be formatted in Conventional Commit.
- Remain consistent with the last commit messages if possibles.
- Focus on describing the changes made, not the implementation details.

Important note:
Commits should be small and focused on a single change.
If there is too many changes, do not provide a commit message but git commands instead:
- Git reset first.
- Break down the changes into smaller, more focused commits.
- Generate a commit message for each commit.

Previous commit messages:
$PREV_COMMIT_MSG

Current git changes:
$CHANGES
EOF
)

# CALLING AI
# --------------------
call_ai "$PROMPT"