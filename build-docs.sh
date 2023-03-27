#! /bin/bash

thisDir=${PWD}
tmpPath="tmp"
docsPath="docs"
scriptsPath="scripts"
gitRepo="https://github.com/hyperledger/aries-cloudagent-python.git"

help() {
    # Display help text
    cat <<-EOF
    Usage: $0 [OPTIONS]

    Options:

    -t  Git tag to checkout. Default branch is main
    -k  Keep the tmp folder
    -h  Help
EOF
    exit 1
}

gitTag=main
delTmp=true
while getopts "hkt:" option; do
    case $option in
    h) # display Help
        help
        exit
        ;;
    t) # Enter a Git tag to checkout
        gitTag=$OPTARG ;;
    k) # Keep the tmp folder
        delTmp=false ;;
    \?) # Invalid option
        echo "Error: Invalid option"
        exit
        ;;
    esac
done

# If there is no tmp dire must be made
if [ -f $tmpPath ]; then
    delTmp=true
fi

# Make the tmp folder if necessary
if [ "$delTmp" == "true" ]; then
    cd ${thisDir}
    rm -rf $tmpPath
    git clone $gitRepo $tmpPath
    cd $tmpPath
    if [ "$gitTag" != "main" ]; then
        git fetch --all --tags
        git checkout tags/$gitTag -b $gitTag
    fi
else
    echo Checking the ACA-Py version
    cd $tmpPath
    git status
fi

# In the root folder
cd ${thisDir}
if [ -e ${scriptsPath}/${gitTag}.sh ]; then
    echo "Running copy script"
    ./${scriptsPath}/${gitTag}.sh ${gitTag}
else
    ls -al ${scriptsPath}/${gitTag}.sh
    echo "No copy script for this version: ${scriptsPath}/${gitTag}.sh does not exist"
fi
