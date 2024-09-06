#!/bin/bash

# Backup existing ags configuration
if [ -d "$HOME/.config/ags" ]; then
    mv $HOME/.config/ags $HOME/.config/ags.bkup
    echo ":: Existing ags configuration backed up to $HOME/.config/ags.bkup"
fi

# Clone HyprPanel repository
git clone https://github.com/Jas-SinghFSU/HyprPanel.git
if [ $? -eq 0 ]; then
    echo ":: HyprPanel repository cloned successfully"
else
    echo ":: Error: Failed to clone HyprPanel repository"
    exit 1
fi

# Create symbolic link
ln -s $(pwd)/HyprPanel $HOME/.config/ags
if [ $? -eq 0 ]; then
    echo ":: Symbolic link created for HyprPanel"
else
    echo ":: Error: Failed to create symbolic link for HyprPanel"
    exit 1
fi

echo ":: HyprPanel installation completed"
