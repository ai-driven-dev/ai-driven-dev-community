#!/bin/sh

. "$(dirname "$0")/_.sh"

# REQUIREMENTS
# --------------------
check_binary "git"

# NOTICE
# --------------------
notice "[aiddc-review]: Reviewing changes."

# SCRIPT PARAMS
# --------------------
PARAM=${1:-staged}

# SCRIPT
# --------------------
case "$PARAM" in
  "changed")
    GIT_CMD="git diff"
    ;;
  "staged")
    GIT_CMD="git diff --cached"
    ;;
  "diff-from-main")
    GIT_CMD="git diff main"
    ;;
  *)
    error "Invalid parameter: $PARAM. Allowed values are 'changed', 'staged', 'diff-from-main'."
    exit 1
    ;;
esac

# PROMPT PARAMS
# --------------------
GIT_CHANGES=$($GIT_CMD)

if [ -z "$GIT_CHANGES" ]; then
  error "No changes to review."
  exit 0
fi

# PROMPT
# --------------------
PROMPT=$(cat <<_
Goal: "Perform an in-depth code review of the following module".

For each line of code provided, you must review:
1. **Code Quality**: Evaluate readability, structure, and adherence to coding standards.
2. **Functionality**: Assess if the code meets functional requirements.
3. **Security**: Identify potential security vulnerabilities.
4. **Performance**: Suggest optimizations to improve performance.
5. **Best Practices**: Highlight areas where best practices are not followed, including error handling, documentation, and testing.

Expected output:
- Only answer with code that need to be changed.
- Very short and tailored feedbacks.
- You need to provide a file by file review.
- Make an analyse only on changes, not on previous versions of the code.

Code to analyse will look like so:
For every file, there are a few metadata lines, like (for example):
\`\`\`
diff --git a/lib/index.js b/lib/index.js
index aadf691..bfef603 100644
--- a/lib/index.js
+++ b/lib/index.js
\`\`\`
This means that \`lib/index.js\` was modified in this commit. Note that this is only an example.
Then there is a specifier of the lines that were modified.
A line starting with \`+\` means it was added.
A line that starting with \`-\` means that line was deleted.
A line that starts with neither \`+\` nor \`-\` is code given for context and better understanding.
It is not part of the diff.
After the git diff of the first file, there will be an empty line, and then the git diff of the next file.

Output format in markdown:
# Code Quality

## Readability

### File \`src/index.js\`

Affected lines of code:
\`\`\`
// import fs from 'fs';
// import path from 'path';
\`\`\`

Suggestion: "You need those files, uncomment the imports."
Code suggestion:
\`\`\`
import fs from 'fs';
\`\`\`

Code to analyse:
$GIT_CHANGES
_
)

# CALLING AI
# --------------------
call_ai "$PROMPT"
