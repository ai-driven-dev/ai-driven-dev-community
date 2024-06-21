#! /bin/bash

#
# This is the main script for the AIDDC.
# It is the entry point for all commands.
#

# Exit if any command fails
set -e


#
# Success function in green color
#
success() {
    echo -e "\033[0;32m$1\033[0m"
}

#
# Debug function
#
if [[ "$1" == "--debug" ]]; then
    debug() {
        echo "DEBUG: $1"
    }
else
    debug() {
        : # No-op when debug is not enabled
    }
fi

#
# Error function in red color
#
error() {
    echo -e "\033[0;31m$1\033[0m"
}


# Get env if exist from previous dir.
BASE_DIR=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)
ENV_PATH="$BASE_DIR/../.env"

if [ -f "$ENV_PATH" ]; then
    source "$ENV_PATH"
else
  error "No .env file found in dir $BASE_DIR"
  exit 1
fi

# Checking if OPENAI_API_KEY is set
if [ -z "$OPENAI_API_KEY" ]; then
    echo "OPENAI_API_KEY is not set. Please set it to your OpenAI API key."
    echo "You can find it in your OpenAI dashboard: https://platform.openai.com/api-keys"
    exit 1
fi

# Gen-AI parameters
GEN_AI_MODEL="gpt-4o"
GEN_AI_MAX_TOKENS=100
GEN_AI_TEMPERATURE=0.7
GEN_AI_SYSTEM_MESSAGE=$(cat <<EOF
Act as a Senior Software Engineer that is experiend in software craft.
Assist with high-quality, concise, efficient, and scalable software solutions.
EOF
)

#
# Private function to call OpenAI API with roles and additional parameters.
#
# Parameters:
#   $1: How the AI should act
#   $2: The prompt message
#   $3: The max tokens
#   $4: The temperature
#
# Returns:
#   The response from the OpenAI API
#
call_openai_api() {
    debug "Starting call_openai_api function"

    # params
    local system_message="$1"
    local prompt="$2"
    local max_tokens="${3:-$GEN_AI_MAX_TOKENS}"
    local temperature="${4:-$GEN_AI_TEMPERATURE}"

    # from globals
    local api_key="${OPENAI_API_KEY}"

    # body
    local body=$(jq -n --arg prompt "$prompt" --arg system_message "$system_message" --arg model "$GEN_AI_MODEL" --argjson max_tokens "$max_tokens" --argjson temperature "$temperature" '{
        model: $model,
        messages: [
            {role: "system", content: $system_message},
            {role: "user", content: $prompt}
        ],
        max_tokens: $max_tokens,
        temperature: $temperature
    }')

    # Check if body is a valid json
    if ! jq -e . >/dev/null 2>&1 <<<"$body"; then
        error "Invalid JSON: $body"
        exit 1
    fi

    debug "Sending request to OpenAI API"
    response=$(curl -sS -X POST https://api.openai.com/v1/chat/completions \
        -H "Content-Type: application/json" \
        -H "Authorization: Bearer ${api_key}" \
        -d "$body")

    if [ $? -ne 0 ]; then
        debug "Failed to call OpenAI API"
        return 1
    fi

    error_message=$(echo "$response" | jq -r '.error.message // empty')
    
    if [ -n "$error_message" ]; then
        debug "Error from OpenAI API: $error_message"
        error "Error: $error_message"
        return 1
    fi

    debug "API call successful, processing response"
    debug "Full API Response in JSON:"
    debug "$response" | jq '.'

    echo "$response" | jq -r '.choices[0].message.content'
}

#
# Ask the AI a question.
#
# Parameters:
#   $1: The prompt message
#
# Returns:
#   The response from the OpenAI API
#
ask_ai() {
    local prompt="$1"

    # Ask user to review prompt before submiting to api
    echo -e "---\n${prompt}\n---"
    read -p "Is this prompt OK? (y/n) " -n 1 -r
    echo

    if [[ ! $REPLY =~ ^[Yy]$ ]]
    then
        exit 1
    fi

    local response=$(call_openai_api "${GEN_AI_SYSTEM_MESSAGE}" "${prompt}")
    echo "$response"
}
