#!/bin/bash

# Script to compare the list of MD files in "docs" has
# all of the files in "tmp". Useful if you aren't sure
# if any new doc files have been added to ACA-Py since
# generating this version of the docs.

# Set the directories to compare
dir1="tmp"
dir2="docs"

# Get the list of md files in each directory
files1=$(find "$dir1" -name "*.md" -type f -exec basename {} \;)
files2=$(find "$dir2" -name "*.md" -type f -exec basename {} \;)

# Diff the basenames of the files
diff <(echo "$files1" | sort -u) <(echo "$files2" | sort -u)
