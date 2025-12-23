#!/bin/bash
# Bash script to create WebP and resized images using cwebp and ImageMagick
# Usage: ./convert_images.sh
SRC_DIR="img"
DST_DIR="img/optimized"
mkdir -p "$DST_DIR"

find "$SRC_DIR" -type f \( -iname '*.jpg' -o -iname '*.jpeg' -o -iname '*.png' \) | while read file; do
  base=$(basename "$file")
  name="${base%.*}"
  # full size webp with cwebp (lossy)
  cwebp -q 80 "$file" -o "$DST_DIR/$name.webp"
  # resized versions using ImageMagick
  for w in 1920 1280 800; do
    magick "$file" -resize ${w}x "$DST_DIR/${name}-$w.webp"
  done
done

echo "Converted images saved to $DST_DIR"
