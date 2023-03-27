#!/bin/bash

VERSION=$1

echo Building pages for ACA-Py Version ${VERSION}

# Clean out the docs folder
rm -rf docs/*

# Replace the nav with the one for main
sed '/nav/,$d' mkdocs.yml >mkdocs.yml.tmp
cat << EOF >>mkdocs.yml.tmp
nav:
- Welcome!: README.md
- ACA-Py README: acapy-README.md
- Features:
    - Developer Introduction: features/DevReadMe.md
    - Supported Aries AIPs and RFCs: features/SupportedRFCs.md
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
    - Managing Logging: testing/Logging.md
    - ACA-Py Integration Tests: testing/INTEGRATION-TESTS.md
    - Protocol Tracing: testing/AgentTracing.md
    - Troubleshooting: testing/Troubleshooting.md
- Contributing:
    - How to Contribute: contributing/CONTRIBUTING.md
    - Maintainers: contributing/MAINTAINERS.md
    - Hyperledger Code of Conduct: contributing/CODE_OF_CONDUCT.md
    - Security Vulnerability Reporting: contributing/SECURITY.md
- Release Notes: CHANGELOG.md
EOF
mv mkdocs.yml.tmp mkdocs.yml  

# Root folder -- README.md
FOLDER=docs
# Introduction file is in this repo, not ACA-Py
if [ "${VERSION}" == "main" ]; then
  cp Introduction.md ${FOLDER}/README.md
else
  # Change the link to the ReadTheDocs site to be ACA-Py version specific
  FILE=Introduction.md; sed "s#en/latest/#en/${VERSION}#g" ${FILE} > ${FOLDER}/README.md
fi
FILE=README.md; sed 's#\./\(SupportedRFCs.md\)#/features/\1#' tmp/${FILE} \
   | sed 's#\./\(Multitenancy.md\)#/features/\1#' \
   | sed 's#\./\(Mediation.md\)#/features/\1#' \
   | sed 's#\(Endorser.md\)#/features/\1#' \
   | sed 's#\(Troubleshooting.md\)#/testing/\1#' > ${FOLDER}/acapy-${FILE}
cp tmp/aca-py_architecture.png ${FOLDER}
# Special handling for ChangeLog -- add a title at the top of the file
echo "# Release Notes" >${FOLDER}/CHANGELOG.md
FILE=CHANGELOG.md; sed 's#\(Endorser.md\)#/features/\1#g' tmp/${FILE} \
  | sed 's#\(Mediation.md\)#/features/\1#g' \
  | sed 's#./\(Multitenancy.md\)#/features/\1#g' >>${FOLDER}/CHANGELOG.md

# Assets
FOLDER=docs/assets
mkdir ${FOLDER}
cp tmp/docs/assets/*.png ${FOLDER}

# ACA-Py Features
FOLDER=docs/features
mkdir ${FOLDER}
FILE=DevReadMe.md; sed 's#(README.md)#(/README.md)#' tmp/${FILE} \
   | sed "s#Databases.md#/deploying/Databases.md#g" \
   | sed "s#Logging.md#/testing/Logging.md#g" > ${FOLDER}/${FILE}
cp tmp/SupportedRFCs.md ${FOLDER}
cp tmp/AdminAPI.md ${FOLDER}
cp tmp/Multitenancy.md ${FOLDER}
cp tmp/DIDMethods.md ${FOLDER}
cp tmp/DIDResolution.md ${FOLDER}
cp tmp/Multiledger.md ${FOLDER}
cp tmp/docs/GettingStartedAriesDev/PlugIns.md ${FOLDER}
cp tmp/Mediation.md ${FOLDER}
FILE=Endorser.md; sed 's#\./docs/assets/endorse#/features/endorse#' tmp/${FILE} > ${FOLDER}/${FILE}
cp tmp/docs/assets/*.png ${FOLDER}
cp tmp/JsonLdCredentials.md ${FOLDER}
cp tmp/AnoncredsProofValidation.md ${FOLDER}
FILE=UsingOpenAPI.md; sed 's#AdminApi.md#AdminAPI.md#' tmp/${FILE} > ${FOLDER}/${FILE}
cp tmp/Multicredentials.md ${FOLDER}

# Deploying
FOLDER=docs/deploying
mkdir ${FOLDER}
cp tmp/ContainerImagesAndGithubActions.md ${FOLDER}
FILE=deploymentModel.md; sed "s#/docs/assets#/assets#" tmp/${FILE} > ${FOLDER}/${FILE}
FILE=Databases.md ; sed "s#demo/demo-args.yaml#https://github.com/hyperledger/aries-cloudagent-python/tree/${VERSION}/demo/demo-args.yaml#" tmp/${FILE} > ${FOLDER}/${FILE}
cp tmp/RedisPlugins.md ${FOLDER}

# Demos
FOLDER=docs/demo
mkdir ${FOLDER}
cp tmp/demo/AcmeDemoWorkshop.md ${FOLDER}
cp tmp/demo/AliceWantsAJsonCredential.md ${FOLDER}
FILE=AliceWantsAJsonCredential.md; sed "s#\.\./\(JsonLdCredentials.md\)#/demo/\1#" tmp/demo/${FILE} > ${FOLDER}/${FILE}
FILE=README.md; sed "s#runners/#https://github.com/hyperledger/aries-cloudagent-python/tree/${VERSION}/demo/runners/#g" tmp/demo/${FILE} \
  | sed "s#:uhttps#https#" > ${FOLDER}/${FILE}
cp tmp/demo/Endorser.md ${FOLDER}
FILE=AliceGetsAPhone.md; sed 's#\./collateral#/demo/collateral#g' tmp/demo/${FILE} > ${FOLDER}/${FILE}
FILE=AriesOpenAPIDemo.md; sed 's#\./collateral#/demo/collateral#g' tmp/demo/${FILE} \
   | sed 's#\.\./\(AdminAPI.md\)#/features/\1#' > ${FOLDER}/${FILE}
cp -r tmp/demo/collateral ${FOLDER}

# Getting Started
FOLDER=docs/gettingStarted
mkdir ${FOLDER}
FILE=README.md; sed 's#DIDCommMsgs.md#DIDcommMsgs.md#g' tmp/docs/GettingStartedAriesDev/${FILE} \
  | sed "s#PlugIns.md#/features/PlugIns/#g" > ${FOLDER}/${FILE}
cp tmp/docs/GettingStartedAriesDev/IndyBasics.md ${FOLDER}
cp tmp/docs/GettingStartedAriesDev/AriesBasics.md ${FOLDER}
cp tmp/docs/GettingStartedAriesDev/DecentralizedIdentityDemos.md ${FOLDER}
cp tmp/docs/GettingStartedAriesDev/AriesBigPicture.md ${FOLDER}
FILE=AriesAgentArchitecture.md; sed 's#../deploymentModel.md#/deployment/deploymentModel.md#g' tmp/docs/GettingStartedAriesDev/${FILE} > ${FOLDER}/${FILE}
cp tmp/docs/GettingStartedAriesDev/AriesMessaging.md ${FOLDER}
FILE=/AriesDeveloperDemos.md; sed 's#../../demo#/demo#g' tmp/docs/GettingStartedAriesDev/${FILE} > ${FOLDER}/${FILE}
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
FILE=Logging.md ; sed "s#demo/demo-args.yaml#https://github.com/hyperledger/aries-cloudagent-python/tree/${VERSION}/demo/demo-args.yaml#" tmp/${FILE} \
  | sed "s#aries_cloudagent/config/default_logging_config.ini#https://github.com/hyperledger/aries-cloudagent-python/tree/${VERSION}/aries_cloudagent/config/default_logging_config.ini#g" > ${FOLDER}/${FILE}
cp tmp/demo/AgentTracing.md ${FOLDER}
cp tmp/demo/INTEGRATION-TESTS.md ${FOLDER}
cp tmp/Troubleshooting.md ${FOLDER}

# Contributing
FOLDER=docs/contributing
mkdir ${FOLDER}
cp tmp/CONTRIBUTING.md ${FOLDER}
cp tmp/MAINTAINERS.md ${FOLDER}
cp tmp/CODE_OF_CONDUCT.md ${FOLDER}
cp tmp/SECURITY.md ${FOLDER}
