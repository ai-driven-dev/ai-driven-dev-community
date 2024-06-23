#!/bin/sh

. "$(dirname "$0")/_.sh"

# NOTICE
# --------------------
notice "[SCRIPT NAME]: [MESSAGE]"

# PARAMETERS
# --------------------
TEXT="Example text"
CMD=$(echo "Example command output")

# PROMPT
# --------------------
PROMPT=$(cat <<_
MULTILINE
PROMPT 
HERE

$TEXT
$CMD
_
)

# CALLING AI
# --------------------
call_ai "$PROMPT"
