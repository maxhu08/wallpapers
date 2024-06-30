#!/bin/sh

IMAGE_DIR="./walls"
README_FILE="README.md"

for image in "$IMAGE_DIR"/*; do
    if [[ -f "$image" ]]; then
        image_name=$(basename "$image")
        echo "$image_name
![$image_name]($IMAGE_DIR/$image_name)
" >> $README_FILE
    fi
done
