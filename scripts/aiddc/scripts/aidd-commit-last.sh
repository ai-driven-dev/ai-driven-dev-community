#!/bin/sh

. "$(dirname "$0")/_.sh"

# REQUIREMENTS
# --------------------
check_binary "git"

# NOTICE
# --------------------
notice "[aidd-commit-last]: Get the last 10 commits"

# PARAMETERS
# --------------------
PREV_COMMIT_MSG=$(git log -10 --pretty=format:%s)

# SCRIPT
# --------------------
copy "$PREV_COMMIT_MSG"

