#!/bin/bash

# This script is for populating a documentation website from documents in the ACA-Py code repository.
# This repository has the documentation website generation code, the ACA-Py repository has the documentation (markdown files).
# This script is defined per release tag (plus main branch) in the ACA-Py repository
# The process is:
# - Assumes a release version clone ACA-Py repos is in the /tmp folder of this repo
# - Passed in is the Release Versions -- "main" or "0.8.0", etc.
# - Delete the existing content of the /docs folder in this repo
# - Define the per release Mkdocs navigation for the site and put it in place of the current mkdocs YML
# - For each folder that will be in the /docs folder of this rep0:
#   - For each file the is to be in the folder within the /docs folder
#     - Either directly copy, or copy with edits applied the source file to the /docs folder
# - Edits are needed to "fix" the links to work when the file is in the new place in the repo
# See the edits below for the types of changes needed. Usually, they are to change absolute
# links in the ACA-Py folder to relative links in this folder, as well as to handle changes
# in where the docs are placed.
# 
# To find broken links:
# - Run mkdocs locally and click on links and images that result in 404s
# - Once you publish the docs, run a "broken link finder" tool to find others
# To find missing documentation files
# - Scan the /tmp folder for all .md files and see if you have them in the /docs folder
#   - a script to compare the list of .md files in /tmp and /docs is planned


VERSION=$1

echo Building pages for ACA-Py Version ${VERSION}

# Clean out the docs folder
rm -rf docs/*

# Replace the nav with the one for main
sed '/^nav:/,$d' mkdocs.yml >mkdocs.yml.tmp
cat << EOF >>mkdocs.yml.tmp
nav:
- Welcome!:
    - Welcome: README.md
    - ACA-Py README: release/acapy-README.md
    - Release Notes: release/CHANGELOG.md
- Features:
    - Developer Introduction: features/DevReadMe.md
    - Supported Aries Interop Profiles and RFCs: features/SupportedRFCs.md
    - The Admin API: features/AdminAPI.md
    - ACA-Py Plugins: features/PlugIns.md
    - Multitenant ACA-Py: features/Multitenancy.md
    - DID Methods: features/DIDMethods.md
    - DID Resolution: features/DIDResolution.md
    - Configuring Multiple Indy Ledgers: features/Multiledger.md
    - Automatically Endorsing Indy Transations: features/Endorser.md
    - Using W3C JSON-LD Signed Credentials: features/JsonLdCredentials.md
    - AnonCreds Presentation Validation: features/AnoncredsProofValidation.md
    - Multiple Credential Types: features/Multicredentials.md
    - Code Generation with the Open API: features/UsingOpenAPI.md
    - ACA-Py as a DIDComm Mediator: features/Mediation.md
- Demos:
    - The Alice-Faber Demo: demo/README.md
    - Open API Tutorial: demo/AriesOpenAPIDemo.md
    - Alice Gets a Phone: demo/AliceGetsAPhone.md
    - Hyperledger Indy Endorser In Action: demo/Endorser.md
    - Using W3C JSON-LD Credentials: demo/AliceWantsAJsonCredential.md
    - DIY -- ACME Controller Workshop: demo/AcmeDemoWorkshop.md
- Getting Started:
    - Becoming an Indy/Aries Developer: gettingStarted/README.md
    - Hyperledger Indy Basics: gettingStarted/IndyBasics.md
    - Hyperledger Aries Basics: gettingStarted/AriesBasics.md
    - Decentralized Identity Demos: gettingStarted/DecentralizedIdentityDemos.md
    - Aries - The Big Picture: gettingStarted/AriesBigPicture.md
    - Aries Architecture: gettingStarted/AriesAgentArchitecture.md
    - Aries Messaging: gettingStarted/AriesMessaging.md
    - Aries Developer Demos: gettingStarted/AriesDeveloperDemos.md
    - TODO Agent Connections: gettingStarted/AgentConnections.md
    - TODO Issuing AnonCreds Credentials: gettingStarted/IssuingIndyCredentials.md
    - TODO Presenting AnonCreds Proofs: gettingStarted/PresentingIndyProofs.md
    - TODO Making Your Own ACA-Py Agent: gettingStarted/YourOwnAriesAgent.md
    - Aries Developer Options: gettingStarted/IndyAriesDevOptions.md
    - DIDComm Messaging: gettingStarted/DIDcommMsgs.md
    - DIDComm Message Routing: gettingStarted/RoutingEncryption.md
    - DIDComm Message Routing Example: gettingStarted/AriesRoutingExample.md
    - TODO Connecting to an Indy Network: gettingStarted/ConnectIndyNetwork.md
    - AnonCreds Credential Revocation: gettingStarted/CredentialRevocation.md
- Deploying:
    - Deployment Model: deploying/deploymentModel.md
    - ACA-Py Container Images: deploying/ContainerImagesAndGithubActions.md
    - Databases: deploying/Databases.md
    - Persistent Queues and Caching: deploying/RedisPlugins.md
- Testing/Troubleshooting:
    - Running and Creating Unit Tests: testing/UnitTests.md
    - Managing Logging: testing/Logging.md
    - ACA-Py Integration Tests: testing/INTEGRATION-TESTS.md
    - Protocol Tracing: testing/AgentTracing.md
    - Troubleshooting: testing/Troubleshooting.md
- Contributing:
    - How to Contribute: contributing/CONTRIBUTING.md
    - Maintainers: contributing/MAINTAINERS.md
    - Hyperledger Code of Conduct: contributing/CODE_OF_CONDUCT.md
    - Security Vulnerability Reporting: contributing/SECURITY.md
EOF
mv mkdocs.yml.tmp mkdocs.yml  

# Root folder -- README.md
# For debugging the "sed" command, you can uncomment the "diff" at the end of the
# sed command to see the differences from running the sed.
FOLDER=docs
# Introduction file is in this repo, not ACA-Py
if [ "${VERSION}" == "main" ]; then
  cp Introduction.md ${FOLDER}/README.md
else
  # Change the link to the ReadTheDocs site to be ACA-Py version specific
  FILE=Introduction.md; sed -e "s#en/latest/#en/${VERSION}#g" \
    ${FILE} > ${FOLDER}/README.md; # diff tmp/${FILE} ${FOLDER}/${FILE}
fi

# Release documents
FOLDER=docs/release
mkdir ${FOLDER}
FILE=README.md; sed -e 's#\./\(SupportedRFCs\).md#../../features/\1#' \
   -e 's#\./\(Multitenancy\).md#../../features/\1#' \
   -e 's#\./\(Mediation\).md#../../features/\1#' \
   -e 's#\(Endorser\).md#../../features/\1#' \
   -e 's#\(Troubleshooting\).md#../../testing/\1#' \
   -e 's#/demo/\(README\).md#../../demo/#' \
   -e 's#/docs/GettingStartedAriesDev/\(README\).md#../../gettingStarted/\1#' \
   -e 's#/docs/GettingStartedAriesDev/\(PlugIns\).md#../../features/\1/#' \
  tmp/${FILE} > ${FOLDER}/acapy-${FILE}; # diff tmp/${FILE} ${FOLDER}/acapy-${FILE}
cp tmp/aca-py_architecture.png ${FOLDER}
# Special handling for ChangeLog -- add a title at the top of the file
# echo "# Release Notes" >${FOLDER}/CHANGELOG.md
FILE=CHANGELOG.md; sed -e '1s/^/# Release Notes\n\n/' \
  -e 's#\(Endorser\).md#../../features/\1#g' \
  -e 's#./\(Mediation\).md#../../features/\1#g' \
  -e 's#./\(Multitenancy\).md#../../features/\1#g' \
  -e 's#\/\(SupportedRFCs\).md#../../features/\1#' \
  -e 's#(victorlee0505)#(https://github.com/victorlee0505)#' \
  tmp/${FILE} >${FOLDER}/${FILE}; # diff tmp/${FILE} ${FOLDER}/${FILE}

# Assets
FOLDER=docs/assets
mkdir ${FOLDER}
cp tmp/docs/assets/*.png ${FOLDER}

# ACA-Py Features
FOLDER=docs/features
mkdir ${FOLDER}
FILE=DevReadMe.md; sed -e 's#(README.md)#(/README.md)#' \
    -e "s#\(Databases\).md#../../deploying/\1#g" \
    -e "s#\(Logging\).md#../../testing/\1/#g" \
    -e "s#/docs/GettingStartedAriesDev/README.md#../../gettingStarted/#" \
    -e "s#/\(CONTRIBUTING\).md#../../contributing/\1/#" \
    -e "s#/\(CODE_OF_CONDUCT\).md#../../contributing/\1/#" \
    -e "s/#Running/#running/g" \
    -e "s#(/README.md)#(../../release/acapy-README)#" \
    -e "s#/docs/GettingStartedAriesDev/\(AriesDeveloperDemos\).md#../../\1#" \
    -e "s#\(aries_cloudagent/transport\)#https://github.com/hyperledger/aries-cloudagent-python/tree/${VERSION}/\1#" \
    tmp/${FILE} > ${FOLDER}/${FILE}; # diff tmp/${FILE} ${FOLDER}/${FILE}
cp tmp/SupportedRFCs.md ${FOLDER}
FILE=AdminAPI.md; sed -e "s#/docs/assets/#../../assets/#" \
  tmp/${FILE} > ${FOLDER}/${FILE}; # diff tmp/${FILE} ${FOLDER}/${FILE}
cp tmp/Multitenancy.md ${FOLDER}
cp tmp/DIDMethods.md ${FOLDER}
cp tmp/DIDResolution.md ${FOLDER}
cp tmp/Multiledger.md ${FOLDER}
cp tmp/docs/GettingStartedAriesDev/PlugIns.md ${FOLDER}
cp tmp/Mediation.md ${FOLDER}
FILE=Endorser.md; sed -e 's#\./docs/assets/endorse#../features/endorse#' \
  tmp/${FILE} > ${FOLDER}/${FILE}; # diff tmp/${FILE} ${FOLDER}/${FILE}
cp tmp/docs/assets/*.png ${FOLDER}
cp tmp/JsonLdCredentials.md ${FOLDER}
cp tmp/AnoncredsProofValidation.md ${FOLDER}
FILE=UsingOpenAPI.md; sed -e 's#AdminApi.md#AdminAPI.md#' \
  tmp/${FILE} > ${FOLDER}/${FILE}; # diff tmp/${FILE} ${FOLDER}/${FILE}
cp tmp/Multicredentials.md ${FOLDER}

# Deploying
FOLDER=docs/deploying
mkdir ${FOLDER}
cp tmp/ContainerImagesAndGithubActions.md ${FOLDER}
FILE=deploymentModel.md; sed -e "s#/docs/assets/#../../assets/#" \
  tmp/${FILE} > ${FOLDER}/${FILE}; # diff tmp/${FILE} ${FOLDER}/${FILE}
FILE=Databases.md ; sed -e "s#demo/demo-args.yaml#https://github.com/hyperledger/aries-cloudagent-python/tree/${VERSION}/demo/demo-args.yaml#" \
  tmp/${FILE} > ${FOLDER}/${FILE}; # diff tmp/${FILE} ${FOLDER}/${FILE}
cp tmp/RedisPlugins.md ${FOLDER}

# Demos
FOLDER=docs/demo
mkdir ${FOLDER}
cp tmp/demo/AcmeDemoWorkshop.md ${FOLDER}
cp tmp/demo/AliceWantsAJsonCredential.md ${FOLDER}
FILE=AliceWantsAJsonCredential.md; sed -e "s#../\(JsonLdCredentials\).md#../../features/\1#" tmp/demo/${FILE} > ${FOLDER}/${FILE}
FILE=README.md; sed -e "s#runners/#https://github.com/hyperledger/aries-cloudagent-python/tree/${VERSION}/demo/runners/#g" \
  -e "s#:uhttps#https#" \
  tmp/demo/${FILE} > ${FOLDER}/${FILE}; # diff tmp/demo/${FILE} ${FOLDER}/${FILE}
cp tmp/demo/Endorser.md ${FOLDER}
FILE=AliceGetsAPhone.md; sed -e 's#\./collateral#../../demo/collateral#g' \
  -e "s#(/demo)#(../../demo)#" \
  tmp/demo/${FILE} > ${FOLDER}/${FILE}; # diff tmp/demo/${FILE} ${FOLDER}/${FILE}
FILE=AriesOpenAPIDemo.md; sed -e 's#\./collateral#../../demo/collateral#g' \
   -e 's#\.\./\(AdminAPI\).md#../../features/\1#' \
   tmp/demo/${FILE} > ${FOLDER}/${FILE}; # diff tmp/demo/${FILE} ${FOLDER}/${FILE}
cp -r tmp/demo/collateral ${FOLDER}

# Getting Started
FOLDER=docs/gettingStarted
mkdir ${FOLDER}
FILE=README.md; sed -e 's#DIDCommMsgs.md#DIDcommMsgs.md#g' \
  -e "s#PlugIns.md#../features/PlugIns/#g" \
  tmp/docs/GettingStartedAriesDev/${FILE} > ${FOLDER}/${FILE}; # diff tmp/docs/GettingStartedAriesDev/${FILE} ${FOLDER}/${FILE}
cp tmp/docs/GettingStartedAriesDev/IndyBasics.md ${FOLDER}
cp tmp/docs/GettingStartedAriesDev/AriesBasics.md ${FOLDER}
cp tmp/docs/GettingStartedAriesDev/DecentralizedIdentityDemos.md ${FOLDER}
cp tmp/docs/GettingStartedAriesDev/AriesBigPicture.md ${FOLDER}
FILE=AriesAgentArchitecture.md; sed -e 's#../\(deploymentModel\).md#../../deploying/\1#g' \
  -e "s#/docs/assets/#../../assets/#" \
  tmp/docs/GettingStartedAriesDev/${FILE} > ${FOLDER}/${FILE}; # diff tmp/docs/GettingStartedAriesDev/${FILE} ${FOLDER}/${FILE}
cp tmp/docs/GettingStartedAriesDev/AriesMessaging.md ${FOLDER}
FILE=/AriesDeveloperDemos.md; sed -e 's#../../demo#../../demo#g' \
  -e "s#\(AriesOpenAPIDemo\).md#\1#" \
  -e "s#demo/README.md#demo/#" \
  tmp/docs/GettingStartedAriesDev/${FILE} > ${FOLDER}/${FILE}; # diff tmp/docs/GettingStartedAriesDev/${FILE} ${FOLDER}/${FILE}
cp tmp/docs/GettingStartedAriesDev/AgentConnections.md ${FOLDER}
cp tmp/docs/GettingStartedAriesDev/IssuingIndyCredentials.md ${FOLDER}
cp tmp/docs/GettingStartedAriesDev/PresentingIndyProofs.md ${FOLDER}
cp tmp/docs/GettingStartedAriesDev/YourOwnAriesAgent.md ${FOLDER}
cp tmp/docs/GettingStartedAriesDev/IndyAriesDevOptions.md ${FOLDER}
cp tmp/docs/GettingStartedAriesDev/DIDcommMsgs.md ${FOLDER}
cp tmp/docs/GettingStartedAriesDev/RoutingEncryption.md ${FOLDER}
cp tmp/docs/GettingStartedAriesDev/AriesRoutingExample.md ${FOLDER}
cp tmp/docs/GettingStartedAriesDev/ConnectIndyNetwork.md ${FOLDER}
cp tmp/docs/GettingStartedAriesDev/CredentialRevocation.md ${FOLDER}

# Testing and Troubleshooting
FOLDER=docs/testing
mkdir ${FOLDER}
FILE=Logging.md ; sed -e "s#demo/demo-args.yaml#https://github.com/hyperledger/aries-cloudagent-python/tree/${VERSION}/demo/demo-args.yaml#" \
  -e "s#aries_cloudagent/config/default_logging_config.ini#https://github.com/hyperledger/aries-cloudagent-python/tree/${VERSION}/aries_cloudagent/config/default_logging_config.ini#g" \
  tmp/${FILE} > ${FOLDER}/${FILE}; # diff tmp/${FILE} ${FOLDER}/${FILE}
FILE=AgentTracing.md ; sed -e "s#./\(EFK-stack\)#https://github.com/hyperledger/aries-cloudagent-python/tree/${VERSION}/demo/\1#" \
  tmp/demo/${FILE} > ${FOLDER}/${FILE}; # diff tmp/demo/${FILE} ${FOLDER}/${FILE}
cp tmp/demo/INTEGRATION-TESTS.md ${FOLDER}
FILE=Troubleshooting.md; sed -e "s#(demo)#(../../demo)#" \
  tmp/${FILE} > ${FOLDER}/${FILE}; # diff tmp/${FILE} ${FOLDER}/${FILE}

# Contributing
FOLDER=docs/contributing
mkdir ${FOLDER}
cp tmp/CONTRIBUTING.md ${FOLDER}
cp tmp/MAINTAINERS.md ${FOLDER}
cp tmp/CODE_OF_CONDUCT.md ${FOLDER}
cp tmp/SECURITY.md ${FOLDER}
