#!/bin/sh

. "$(dirname "$0")/_.sh"

# REQUIREMENTS
# --------------------
check_binary "git"

# NOTICE
# --------------------
notice "[aiddc-pull-request]: Preparing pull request with pre-filled Template"

# PARAMETERS
# --------------------
TEMPLATE=$(cat templates/pull_request_template.md)
CHANGES=$(git diff main)

# PROMPT
# --------------------
PROMPT=$(cat <<_
Goal:
Create a pull request for my changes.

Rules:
- Use the changes from main.
- Fill the "template" file to create the PR (the "output").
- "Instructions" comments must be followed no matter what.
- "Instructions" comments must be remove from the output.
- Output should be properly formated in markdown.

Changes from main (surrounded by """ delimiters):
"""
$CHANGES
"""

Template file (surrounded by """ delimiters):
"""
$TEMPLATE
"""
_
)

# CALLING AI
# --------------------
call_ai "$PROMPT"
