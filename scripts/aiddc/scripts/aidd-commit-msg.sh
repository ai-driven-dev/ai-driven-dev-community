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
CHANGES=$(git diff)
CURRENT_DIR=$(pwd)

# If there is no changes, exit.
if [ -z "$CHANGES" ]; then
    error "No changes to commit"
    echo "Please UNSTAGE changes before generating a commit message."
    exit 1
fi

# PROMPT
# --------------------
PROMPT=$(cat <<EOF
Goal:
1. Summarize functionnal changes in comments, with numbered list.
2. Identify hunks (but do not display them).
3. Generate git add + git commit message for every changes in the code, following rules.

Rules:
- Should be formatted in Conventional Commit.
- Remain consistent with the last commit messages if possibles.
- Focus on describing the changes made, not the implementation details.
- Commits should be small and focused on a single change.
- 1 commit message can have multiple files changes.
- Answer with shell script ONLY.

Previous commit messages:
$PREV_COMMIT_MSG

Current git changes:
$CHANGES
EOF
)

# CALLING AI
# --------------------
call_ai "$PROMPT"