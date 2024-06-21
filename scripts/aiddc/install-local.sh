#!/bin/bash

. "$(dirname "$0")/scripts/_.sh"

# Development purpose

DEST=~/.aiddc

if [ -d "$DEST" ]; then
  debug "Directory $DEST already exists, removing..."
  rm -rf $DEST
fi

cp -vr ../aiddc $DEST

# Install AIDD-C locally
source ~/.bashrc

success "AIDD-C installed successfully."