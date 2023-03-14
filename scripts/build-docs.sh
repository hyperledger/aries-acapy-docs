#! /bin/bash

tmpPath="../tmp"
docsPath="../docs"
versionedDocsPath="../versioned_docs"
gitRepo="https://github.com/hyperledger/aries-cloudagent-python.git"

help() {
    # Display help text
    cat <<-EOF
    Usage: $0 [OPTIONS]

    Options:

    -t  Git tag to checkout. Default branch is main
    -m  Run modifiers on built docs
    -h  Help

EOF
    exit 1
}

while getopts "ht:m" option; do
    case $option in
    h) # display Help
        help
        exit
        ;;
    t) # Enter a Git tag to checkout
        gitTag=$OPTARG ;;
    m) # Run modifiers on build
        modifiers=true ;;
    \?) # Invalid option
        echo "Error: Invalid option"
        exit
        ;;
    esac
done

# Install yarn
yarn --version
yarn install --immutable

# In the scripts directory
cd $(dirname "$0")
rm -rf $tmpPath
git clone $gitRepo $tmpPath

# In the tmp directory
cd $tmpPath
if [[ ! -z $gitTag ]]; then
    git fetch --all --tags
    git checkout tags/$gitTag -b $gitTag
fi

# In the scripts directory
cd "../scripts"
if [[ ! -z $gitTag ]]; then
    node compile-docs.js -t $gitTag
    node compile-versions.js -t $gitTag
    # Cleanup
    rsync -a $tmpPath/docs/docusaurus/docs/* $versionedDocsPath/version-$gitTag
    rsync -a $versionedDocsPath/version-$gitTag/docs/docs/assets* ../static/versioned_docs/version-$gitTag
    rm -rf $versionedDocsPath/version-$gitTag/docs/docs

    if [[ ! -z $modifiers ]]; then
        # Run modifications
        node run-modifiers.js -t $gitTag
    fi
else
    node compile-docs.js
    # Cleanup
    rsync -a $tmpPath/docs/docusaurus/docs/* $docsPath
    rsync -a $docsPath/docs/docs/assets* ../static/docs
    rm -rf $docsPath/docs/docs

    if [[ ! -z $modifiers ]]; then
        # Run modifications
        node run-modifiers.js
    fi
fi
rm -rf $tmpPath
