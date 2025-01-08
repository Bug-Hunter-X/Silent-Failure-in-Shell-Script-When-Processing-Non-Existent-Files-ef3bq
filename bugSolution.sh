#!/bin/bash

# Improved script with robust error handling

files=("/tmp/file1.txt" "/tmp/file2.txt" "/tmp/nonexistent.txt")

for file in "${files[@]}"; do
  # Check if the file exists before processing
  if [ -f "$file" ]; then
    process_file "$file"
  else
    echo "Error: File '$file' not found."
  fi
done

process_file() {
  echo "Processing: $1"
  # Add error handling to the cat command
  if cat "$1" > /dev/null 2>&1; then
    echo "File '$1' processed successfully"
  else
    echo "Error processing file '$1'"
  fi
}
