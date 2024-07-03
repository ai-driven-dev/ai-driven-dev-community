#!/bin/sh

. "$(dirname "$0")/_.sh"

# REQUIREMENTS
# --------------------
check_binary "git"

# NOTICE
# --------------------
notice "[aiddc-commits-diff-main]: Get the commits diff between the current branch and main branch."

# PROMPT PARAMS
# --------------------
DIFF=$(git log --oneline --graph --decorate --all main..HEAD)

#
# COPY OUTPUT
# 
copy "$PROMPT"
