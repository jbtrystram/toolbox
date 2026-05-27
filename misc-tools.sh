#!/bin/bash

set -euxo pipefail

OCP_URL=https://mirror.openshift.com/pub/openshift-v4/clients
# tekton cli
curl -L $OCP_URL/pipelines/latest/tkn-linux-amd64.tar.gz | tar xvzf - tkn -C /usr/local/bin --no-same-owner
# oc cli
curl -L $OCP_URL/ocp/latest/openshift-client-linux.tar.gz | tar zvxf - oc -C /usr/local/bin --no-same-owner

# To test GH actions
# https://github.com/nektos/act/
curl -LO https://github.com/nektos/act/releases/latest/download/act_Linux_x86_64.tar.gz
tar xvf act_Linux_x86_64.tar.gz -C /usr/local/bin act
rm -f act_Linux_x86_64.tar.gz

#opencode
curl -fsSL https://opencode.ai/install > /tmp/opencode
bash /tmp/opencode --no-modify-path
# opencode installs to a dumb location
mv /root/.opencode/bin/opencode /usr/local/bin/opencode
rm -rf /root/.opencode
# remove install-script
rm /tmp/opencode

