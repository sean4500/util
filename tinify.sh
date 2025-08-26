#!/bin/bash

# Requires 'jq' and 'curl' libraries
# Add: alias tinify='~/Util/tinify.sh' to your .zshrc or .bashrc file
# Usage – "tinify image.jpg"

# Set API_KEY to environment var TINIFY_API_KEY. Please TINIFY_API_KEY in .bashrc or .zshrc
API_KEY=$TINIFY_API_KEY

# Input image file
INPUT_FILE="$1"

# Output file (optional)
OUTPUT_FILE="${2:-compressed_$1}"

# Check if input file exists
if [[ ! -f "$INPUT_FILE" ]]; then
  echo "Error: File '$INPUT_FILE' not found."
  exit 1
fi

echo "Making API Request to Tinify..."

# Compress the image using Tinify API
RESPONSE=$(curl -s --user api:"$API_KEY" --data-binary @"$INPUT_FILE" -H "Content-Type: application/octet-stream" https://api.tinify.com/shrink)

# Extract the URL of the compressed image
OUTPUT_URL=$(echo "$RESPONSE" | jq -r '.output.url')

# Check for errors
if [[ "$OUTPUT_URL" == "null" ]]; then
  echo "Compression failed:"
  echo "$RESPONSE"
  exit 1
fi

# Download the compressed image
curl -s "$OUTPUT_URL" -o "$OUTPUT_FILE"

echo "Image compressed successfully: $OUTPUT_FILE"
