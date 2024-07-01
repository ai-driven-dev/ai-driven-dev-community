#!/bin/bash

. "$(dirname "$0")/scripts/_.sh"

# Development purpose

DEST=~/.aiddc

if [ -d "$DEST" ]; then
  debug "Directory $DEST already exists, removing..."
  rm -rfv $DEST
fi

debug "Copying AIDD-C to $DEST..."
cp -vr ../aiddc $DEST

debug "Making scripts executable..."
chmod +x $DEST/scripts/*.sh

# Install node modules
cd $DEST
npm install

source ~/.bashrc

success "AIDD-C installed successfully."
