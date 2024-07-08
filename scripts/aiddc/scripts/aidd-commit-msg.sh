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

# FUNCTION
# --------------------
created_files_prompt() {

    local UNTRACKED=$(git ls-files --others --exclude-standard)

    if [ -z "$UNTRACKED" ]; then
        return
    fi

    echo "Created files:"
    
    for file in $UNTRACKED; do
        echo "---"
        echo "$file"
        cat "$file"
        echo "---"
        echo ""
    done
}

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
- Use relative git add path based on $CURRENT_DIR.
- Use "git add --patch" with hunks when little changes are made.
    - When using path option, be sure to "y" in EOF multiple if needed.
- Do not use "git add --patch" one 1 line changes.

Previous commit messages:
$PREV_COMMIT_MSG

Current git changes:
$CHANGES

$(created_files_prompt)
EOF
)

# CALLING AI
# --------------------
call_ai "$PROMPT"