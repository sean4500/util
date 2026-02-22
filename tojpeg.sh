
#!/bin/bash

# Usage: ./png_to_jpg.sh image.png

if [ -z "$1" ]; then
  echo "Usage: $0 image.png"
  exit 1
fi

input="$1"
output="${input%.png}.jpg"

# Convert with high quality (minimal compression)
magick "$input" -quality 100 "$output"