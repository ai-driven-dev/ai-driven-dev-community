#!/bin/bash

# TODO: if some existing files has been modified, then the script should not overwrite them.

set -e

. "$(dirname "$0")/scripts/_.sh"

SOURCE=https://github.com/alexsoyes/ai-driven-dev-community/archive/refs/heads/main.zip
SOURCE_FOLDER_TO_UNZIP=scripts/aiddc
TMP=/tmp/aiddc
DEST=~/.aiddc

debug "Create TMP folder if not exist."
mkdir -p $TMP

debug "Download source folder, then extract the subfolder $SOURCE_FOLDER_TO_UNZIP."
wget -qO- $SOURCE | tar -xz -C $TMP

if [ ! -d "$TMP/ai-driven-dev-community-main" ]; then
  error "Failed to download or extract the source folder."
  exit 1
fi

if [ -d "$DEST" ]; then
  debug "Directory '$DEST' already exists, removing..."
  rm -rf $DEST
fi

debug "Move the subfolder $SOURCE_FOLDER_TO_UNZIP to $DEST."
mv -v $TMP/ai-driven-dev-community-main/$SOURCE_FOLDER_TO_UNZIP $DEST

chmod +x $DEST/scripts/*.sh

debug "Remove the tmp folder."
rm -rf $TMP

debug "Added the following line to .bashrc: \`source ~/.aiddc/aliases.sh\`"

if grep -q 'source ~/.aiddc/aliases.sh' ~/.bashrc; then
    success "The aliases are already sourced in .bashrc."
else
    debug "The source line for aliases is missing in .bashrc, adding..."
    echo 'source ~/.aiddc/aliases.sh' >> ~/.bashrc
fi

if [ -f ~/.zshrc ]; then
    if grep -q 'source ~/.aiddc/aliases.sh' ~/.zshrc; then
        success "The aliases are already sourced in .zshrc."
    else
        debug "The source line for aliases is missing in .zshrc, adding..."
        echo 'source ~/.aiddc/aliases.sh' >> ~/.zshrc
    fi
else
    debug "~/.zshrc does not exist, skipping..."
fi

cd $DEST
npm install

success "AIDD-C installed successfully."
tree $DEST
