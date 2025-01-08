# Shell Script Bug: Silent Failure on Non-Existent Files

This repository demonstrates a common, yet subtle bug in shell scripting: silent failure when attempting to process non-existent files.

## The Bug

The `bug.sh` script iterates through a list of files.  However, if one of the files is missing, it will fail silently, rather than reporting an error or exiting gracefully. This can lead to unexpected results, where some files are processed and others are skipped without any indication of failure.

## The Solution

The `bugSolution.sh` script demonstrates how to improve the error handling. It checks the existence of each file before attempting to process it using the `-f` operator.  This ensures that the script handles the case gracefully, providing informative error messages, and preventing unexpected behavior.