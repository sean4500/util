#!/bin/bash

# Usage: ./rename.sh filename.txt

original="$1"
# Convert to lowercase, replace spaces and underscores with hyphens, and remove other unwanted characters
sanitized=$(echo "$original" | tr '[:upper:]' '[:lower:]' | sed -E 's/[ _]+/-/g' | sed -E 's/[^a-z0-9.-]//g')

# Optionally, remove multiple consecutive hyphens
sanitized=$(echo "$sanitized" | sed -E 's/-+/-/g')

# Rename the file
mv "$original" "$sanitized"

echo "Renamed '$original' to '$sanitized'"