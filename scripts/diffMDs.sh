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
echo Added documents are only in the generated site set of documents.
echo "acapy-README.md" is a copy of the ACA-Py README.md to the generated site, so is OK to be listed here.
echo Deleted documents are only in the ACA-Py repo.
echo This script isn\'t great with the various README.md files in ACA-Py, so new ones might be missed.
echo ""
diff <(echo "$files1" | sort -u) <(echo "$files2" | sort -u)
