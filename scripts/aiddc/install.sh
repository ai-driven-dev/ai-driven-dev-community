#! /bin/bash

SOURCE=https://github.com/alexsoyes/ai-driven-dev-community/blob/main/scripts/aiddc/
DEST=~/.aiddc

# Create the directory if it doesn't exist.
mkdir -pv $DEST

# Download script folder and place it into DEST directory.
wget -q -O - $SOURCE | tar -xz -C $DEST

# Make all scripts executable.
chmod +x $DEST/*.sh

# Add a line to .bashrc to import our aliases.
echo 'source ~/.aiddc/aliases.sh' >> ~/.bashrc

