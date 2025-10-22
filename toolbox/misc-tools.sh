#!/bin/bash

set -euxo pipefail

# Gemini CLI

npm install -g @google/gemini-cli

# tekton cli
curl -L https://mirror.openshift.com/pub/openshift-v4/clients/pipelines/latest/tkn-linux-amd64.tar.gz -o tkn.tar.gz
tar xvf tkn.tar.gz -C /usr/local/bin/ --no-same-owner
rm -f tkn.tar.gz

# To test GH actions
# https://github.com/nektos/act/
curl -LO https://github.com/nektos/act/releases/latest/download/act_Linux_x86_64.tar.gz
tar xvf act_Linux_x86_64.tar.gz -C /usr/local/bin act
rm -f act_Linux_x86_64.tar.gz
