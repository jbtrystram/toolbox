#!/bin/bash

set -euxo pipefail

# Reference : 
# https://github.com/helix-editor/helix/wiki/Language-Server-Configurations#toml

npm i -g bash-language-server
npm i -g yaml-language-server@next
npm i -g dockerfile-language-server-nodejs

go install golang.org/x/tools/gopls@latest 
go install golang.org/x/tools/cmd/goimports@latest

pip install -U 'python-lsp-server[all]'

# Marksman for markdown support
curl -L https://github.com/artempyanykh/marksman/releases/latest/download/marksman-linux-x64 \
 -o /usr/local/bin/marksman
chmod +x /usr/local/bin/marksman
