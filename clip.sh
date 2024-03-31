#!/bin/bash

# Function to read files and append content to CopyQ clipboard
read_files_and_append_to_clipboard() {
    local directory="$1"

    # Check if the provided directory exists
    if [ ! -d "$directory" ]; then
        echo "Error: Directory doesn't exist."
        return 1
    fi

    # Iterate through each file in the directory
    for file in "$directory"/*.txt; do
        # Ensure it's a text file
        if [ -f "$file" ]; then
            # Read the content of the file, removing non-printable characters
            content=$(iconv -c -f UTF-8 -t UTF-8 "$file" | tr -cd '[:print:]')
            # Append content to CopyQ default clipboard.
            copyq tab "&clipboard" add "$content"
            # I was using this on a Opensuse Tumbleweed and installed copyq using flatpak. 
            # If you installed copyq with flatpak, you may need something like this.
            # flatpak run com.github.hluk.copyq tab "&clipboard" add "$content"
            echo "Content of '$file' appended to CopyQ clipboard."
        fi
    done
}

# Provide the directory path containing the text files
directory_path="/PATH_TO_DIRECTORY/CONTAINING/TEXT_FILES"

# Call the function
read_files_and_append_to_clipboard "$directory_path"
