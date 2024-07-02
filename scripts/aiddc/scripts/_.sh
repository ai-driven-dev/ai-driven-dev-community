#!/bin/sh

#
# This is the main script for the AIDDC.
# It is the entry point for all commands.
#

# Exit if any command fails
set -e

#
# Notice function in yellow color
# Prints a notice message in yellow color.
# Arguments:
#   $1 - The notice message to print.
#
notice() {
    printf "\033[0;33m%s\033[0m\n" "$1"
}

#
# Success function in green color
# Prints a success message in green color.
# Arguments:
#   $1 - The success message to print.
#
success() {
    printf "\033[0;32m%s\033[0m\n" "$1"
}

#
# Error function in red color
# Prints an error message in red color.
# Arguments:
#   $1 - The error message to print.
#
error() {
    printf "\033[0;31m%s\033[0m\n" "$1"
}

#
# Debug function
# Prints debug messages if DEBUG environment variable is set to "true".
# Arguments:
#   $1 - The debug message to print.
#
if [[ "${DEBUG}" == "true" ]]; then
    debug() {
        echo "---> DEBUG: $1"
    }
else
    debug() {
        : # No-op when debug is not enabled
    }
fi


#
# This function checks if a binary is installed
#
check_binary() {
    if ! command -v "$1" &>/dev/null; then
        error "$1 is not installed"
        exit 1
    fi
}

check_binary "node"

# Get env if exist from previous dir.
# Loads environment variables from the .env file if it exists.
# Exits with an error message if the .env file is not found.
BASE_DIR=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)
ENV_PATH="$BASE_DIR/../.env"

if [ -f "$ENV_PATH" ]; then
    source "$ENV_PATH"
    debug ".env file loaded"
else
  error "No .env file found in dir $BASE_DIR"
  echo ""
  echo "You can create one by copying .env.example to .env and adding your OpenAI API key."
  echo ""
  cat "$BASE_DIR/../.env.example"
  echo ""
  exit 1
fi

# Checking if OPENAI_API_KEY is set
# Exits with an error message if the OPENAI_API_KEY environment variable is not set.
if [ -z "$OPENAI_API_KEY" ]; then
    echo "OPENAI_API_KEY is not set. Please set it to your OpenAI API key."
    echo "You can find it in your OpenAI dashboard: https://platform.openai.com/api-keys"
    exit 1
fi

#
# Call AI function
# Calls the main AI script using Node.js.
#
call_ai() {
    echo "$1" > "$BASE_DIR/../.prompt"

    debug "Prompt size is: $(wc -c "$BASE_DIR/../.prompt")"

    node "$BASE_DIR/../main.js"

    rm "$BASE_DIR/../.prompt"
}

#
# Copy to clipboard function
#
copy () {
    notice "---"
    echo "$1"
    notice "---"
    echo "$1" | pbcopy
    success "📋 Copied to clipboard"
}