#!/bin/sh

. "$(dirname "$0")/_.sh"

# REQUIREMENTS
# --------------------
check_binary "git"

# NOTICE
# --------------------
notice "[aiddc-pull-request]: Preparing pull request with pre-filled Template"
echo "Args:

- 1: Template file path (default: $DEFAULT_PARAM)

Example:
$ aiddc-pull-request './my-projects/.github/pull_request_template.md'
"

# SCRIPT PARAMS
# --------------------
DEFAULT_PARAM="$(dirname "$0")/../templates/pull_request_template.md"
PARAM=${1:-$DEFAULT_PARAM}

# Validate the parameter
if [ "$PARAM" = "$DEFAULT_PARAM" ]; then
  notice "[aiddc-pull-request]: Using default template"
fi

if [ ! -f "$PARAM" ]; then
  error "Template file does not exist: $PARAM"
  exit 1
fi

# PARAMETERS
# --------------------
TEMPLATE=$PARAM
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
