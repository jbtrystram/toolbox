#!/bin/bash

set -euxo pipefail

# Gemini CLI

npm install -g @google/gemini-cli

# tekton cli
curl -L https://mirror.openshift.com/pub/openshift-v4/clients/pipelines/latest/tkn-linux-amd64.tar.gz -o tkn.tar.gz
tar xvf tkn.tar.gz -C /usr/local/bin/ --no-same-owner
rm -f tkn.tar.gz
