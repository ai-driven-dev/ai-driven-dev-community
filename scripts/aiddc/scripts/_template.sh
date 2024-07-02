#!/bin/sh

. "$(dirname "$0")/_.sh"

# REQUIREMENTS
# --------------------
check_binary "git"

# NOTICE
# --------------------
notice "[SCRIPT NAME]: MESSAGE"

# PARAMETERS
# --------------------
TEXT="Example text"
CMD=$(echo "Example command output")

# SCRIPT
# --------------------
echo "Doing something... like finding todos"
find . -type f -name "*.js" | xargs grep "TODO"

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
