#! /bin/bash

tmpPath="../tmp"
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
cd "$(dirname "$0")"
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
    node generate-deployment.js -t $gitTag
else
    node generate-deployment.js
fi
