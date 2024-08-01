#!/bin/sh

IMAGE_DIR="./walls"
README_FILE="README.md"

rm -f $README_FILE
echo -e "# wallpapers\n" > $README_FILE

# Loop through the images and append them to README.md
for image in "$IMAGE_DIR"/*; do
    if [ -f "$image" ]; then
        image_name=$(basename "$image")
        echo "$image_name
![$image_name]($IMAGE_DIR/$image_name)
" >> $README_FILE
    fi
done

