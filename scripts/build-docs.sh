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
    -h  Help

EOF
    exit 1
}

while getopts ":ht:" option; do
    case $option in
    h) # display Help
        help
        exit
        ;;
    t) # Enter a Git tag to checkout
        gitTag=$OPTARG ;;
    \?) # Invalid option
        echo "Error: Invalid option"
        exit
        ;;
    esac
done

# In the scripts directory
cd $(dirname "$0")
rm -rf $tmpPath
gh repo clone $gitRepo $tmpPath

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
else
    node compile-docs.js
    # Cleanup
    rsync -a $tmpPath/docs/docusaurus/docs/* $docsPath
    rsync -a $docsPath/docs/docs/assets* ../static/docs
    rm -rf $docsPath/docs/docs
fi
rm -rf $tmpPath
