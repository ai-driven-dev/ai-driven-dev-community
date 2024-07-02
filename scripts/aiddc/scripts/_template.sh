#!/bin/sh

. "$(dirname "$0")/_.sh"

# REQUIREMENTS
# --------------------
check_binary "git"

# NOTICE
# --------------------
notice "[SCRIPT NAME]: MESSAGE"

# SCRIPT PARAMS
# --------------------
PARAM=${1:-staged}

# Validate the parameter
if [ "$PARAM" != "changed" ] && [ "$PARAM" != "staged" ] && [ "$PARAM" != "diff-from-main" ]; then
  error "Invalid parameter: $PARAM. Allowed values are 'changed', 'staged', 'diff-from-main'."
  exit 1
fi

# SCRIPT
# --------------------
echo "Doing something... like finding todos"
find . -type f -name "*.js" | xargs grep "TODO"

# PROMPT PARAMS
# --------------------
TEXT="Example text"
CMD=$(echo "Example command output")

# PROMPT
# --------------------
PROMPT=$(cat <<_
Goal: ""

Rules:
- 

Expected output:
- 
$TEXT
$CMD
_
)

#
# COPY OUTPUT
# 
copy "$PROMPT"

# CALLING AI
# --------------------
call_ai "$PROMPT"
