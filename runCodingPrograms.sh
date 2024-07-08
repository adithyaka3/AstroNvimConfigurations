#!/bin/bash

# Get the file name from the first argument
file_name="$1"

# Extract the file extension
file_extension="${file_name##*.}"

# Check the file extension and run the appropriate command
if [ "$file_extension" == "py" ]; then
    python "$file_name"
    
elif [ "$file_extension" == "cpp" ]; then
    g++ "$file_name" -o a.out
    ./a.out
else
    echo "Unsupported file type: $file_extension"
fi
