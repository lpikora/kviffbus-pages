#!/bin/bash

# Remove React Native Web generated files (commonly in web build directories)

# Define directories or file patterns to remove
WEB_BUILD_DIRS=("_expo" "assets")
WEB_BUILD_FILES=("index.html" "favicon.ico" "manifest.json" "leaflet.css" "logo192.png" "logo512.png" "metadata.json" "sw.js" "sw.js.map" "workbox-*.js" "workbox-*.js.map") 

# Remove directories
for dir in "${WEB_BUILD_DIRS[@]}"; do
    if [ -d "$dir" ]; then
        echo "Removing directory: $dir"
        rm -rf "$dir"
    fi
done

# Remove files in the project root
for file in "${WEB_BUILD_FILES[@]}"; do
        echo "Removing file: $file"
        rm -f $file
done

echo "React Native Web generated files removed."