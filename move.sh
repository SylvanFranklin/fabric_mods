#!/bin/bash

minecraft_dir="$HOME/Library/Application Support/minecraft"
mods_dir="$minecraft_dir/mods"
temp_mods_dir="$minecraft_dir/temp_mods"

# Check if mods folder already exists
if [ -d "$mods_dir" ]; then
    # If mods folder exists, move its contents to temp_mods folder
    mv -r "$mods_dir" "$temp_mods_dir"
fi

# Move the mods folder to the minecraft directory
cp "mods" "$minecraft_dir"

echo "Folder moved successfully."
