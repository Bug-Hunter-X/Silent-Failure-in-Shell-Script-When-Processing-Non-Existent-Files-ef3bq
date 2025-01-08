#!/bin/bash

# This script attempts to process a list of files, but it has a subtle bug.
# It uses a loop that iterates through the files, but it does not handle the 
# case where one of the files does not exist or is not readable.

files=("/tmp/file1.txt" "/tmp/file2.txt" "/tmp/nonexistent.txt")

for file in "${files[@]}"; do
  # Attempt to process the file.  This command will fail if the file does not exist.
  process_file "$file"
done

process_file() {
  echo "Processing: $1"
  # Assume that some command that reads the file goes here.  Error handling is absent.
  cat "$1"
}
