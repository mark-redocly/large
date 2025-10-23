#!/bin/bash
# Script to create folders named doc{i} with a file containing "Hellow World"

# Number of folders to create (default: 10, can be overridden by first argument)
NUM_FOLDERS=${1:-10000}

echo "Creating $NUM_FOLDERS folders..."

for ((i=1; i<=NUM_FOLDERS; i++)); do
    folder_name="doc${i}"
    
    # Create the folder
    mkdir -p "$folder_name"
    
    # Create a file inside the folder with the content
    echo "Hellow World" > "$folder_name/file.txt"
    
    echo "Created $folder_name/ with file.txt"
done

echo "Done!"

