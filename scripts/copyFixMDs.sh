#!/bin/bash

# This script is for populating a documentation website from documents in the ACA-Py code repository.
# This repository has the documentation website generation code, the ACA-Py repository has the documentation (markdown files).
# This script is defined per release tag (plus main branch) in the ACA-Py repository
# The process is:
# - Assumes a release version clone ACA-Py repos is in the /tmp folder of this repo
# - Passed in is the Release Versions -- "main" or "0.8.0", etc.
# - Delete the existing content of the /docs folder in this repo
# - Define the per release Mkdocs navigation for the site and put it in place of the current mkdocs YML
#   - For main starting from 2024.02.11, this step is eliminated and edits to the navigation are done directly
# - For each folder that will be in the /docs folder of this rep0:
#   - For each file the is to be in the folder within the /docs folder
#     - Either directly copy, or copy with edits applied the source file to the /docs folder
# - Edits are needed to "fix" the links to work when the file is in the new place in the repo
# See the edits below for the types of changes needed. Most are to change relative links
# in the ACA-Py document to because one of the files has moved during the processing.
# 
# To find broken links:
# - Most are found in the running `mkdocs build`
# - After that, run mkdocs locally and click on links and images that result in 404s
# - Once you publish the docs, run a "broken link finder" tool to find others
# To find missing documentation files
# - Run the `./scripts/diffMDs.md` to find docs in the ACA-Py release that AREN'T in these docs.


VERSION=$1

echo Building pages for ACA-Py Version ${VERSION}

# Clean out the docs folder
rm -rf docs/*

# The mkdocs nav used to be built here. Now managed in the mkdocs.yml in the root

# Root folder -- README.md
# For debugging the "sed" command, you can uncomment the "diff" at the end of the
# sed command to see the differences from running the sed. Remember to put the back after!
FOLDER=docs
# The Introduction file is in this repo, not ACA-Py so pull it in.
if [ "${VERSION}" == "main" ]; then
  cp Introduction.md ${FOLDER}/README.md
else
  # Change the link to the ReadTheDocs site to be ACA-Py version specific
  FILE=Introduction.md; sed -e "s#en/latest/#en/${VERSION}#g" \
    ${FILE} > ${FOLDER}/README.md; # diff tmp/${FILE} ${FOLDER}/${FILE}
fi

# Release documents -- documents about this specific release
# Starts with the ACA-Py readme, and includes some other files from the root ACA-Py folder
# Fix up the links
FOLDER=docs/release
mkdir ${FOLDER}
FILE=README.md; sed \
  -e 's#docs/\(.*/.*md\)#../\1#g' \
  -e 's#docs/\(.*/.*md\)#../\1#g' \
  -e 's#(./\(.*\)\.md#(../contributing/\1.md#g' \
  tmp/${FILE} > ${FOLDER}/acapy-${FILE}; # diff tmp/${FILE} ${FOLDER}/acapy-${FILE}
cp tmp/aca-py_architecture.png ${FOLDER}
cp tmp/CHANGELOG.md ${FOLDER}
FILE=CHANGELOG.md; sed -e '1s/^/# Release Notes\n\n/' \
  -e 's#\(Endorser\).md#../features/\1#g' \
  -e 's#./\(Mediation\).md#../features/\1#g' \
  -e 's#./\(Multitenancy\).md#../features/\1#g' \
  -e 's#\/\(SupportedRFCs\).md#../features/\1#' \
  -e 's#.\/\(UpgradingACA-Py\).md#../deploying/\1#' \
  -e 's#(victorlee0505)#(https://github.com/victorlee0505)#' \
  -e 's#^  - #    - #' \
  tmp/${FILE} >${FOLDER}/${FILE}; # diff tmp/${FILE} ${FOLDER}/${FILE}

# Direct copy of the all of the ACA-Py docs
cp -r tmp/docs/UpdateRTD.md tmp/docs/assets tmp/docs/demo tmp/docs/deploying tmp/docs/design tmp/docs/gettingStarted tmp/docs/features tmp/docs/testing docs/

# Fix the links to the files not in the root
FILE=DevReadMe.md; FOLDER=docs/features; sed \
  -e 's#\.\./\.\./README.md#../release/acapy-README.md#g' \
  -e 's#\.\./\.\./#../contributing/#g' \
  tmp/${FOLDER}/${FILE} > ${FOLDER}/${FILE}; # diff tmp/${FOLDER}/${FILE} ${FOLDER}/${FILE}

# Contributing docs are all in the root, so they are easily found in the ACA-Py repo, so they need to be copied.
FOLDER=docs/contributing
mkdir ${FOLDER}
cp tmp/CONTRIBUTING.md ${FOLDER}
cp tmp/MAINTAINERS.md ${FOLDER}
cp tmp/CODE_OF_CONDUCT.md ${FOLDER}
cp tmp/SECURITY.md ${FOLDER}
FILE=PUBLISHING.md; sed \
  -e 's#docs/\(.*/.*md\)#../\1#g' \
  tmp/${FILE} > ${FOLDER}/${FILE}; # diff tmp/${FILE} ${FOLDER}/${FILE}

# Update all references to "main" to "${VERSION}" in Github pathes
# Naively for now:
for i in $(find docs -name "*.md"); do
  sed "s#/tree/main/#/tree/${VERSION}/#" $i >$i.tmp
  sed "s#/blob/main/#/blob/${VERSION}/#" $i.tmp >$i
  rm $i.tmp
done
