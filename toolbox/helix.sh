#!/bin/bash

# Reference : 
# https://github.com/helix-editor/helix/wiki/Language-Server-Configurations#toml

npm i -g bash-language-server
npm i -g yaml-language-server@next
npm i -g dockerfile-language-server-nodejs

go install golang.org/x/tools/gopls@latest 
go install golang.org/x/tools/cmd/goimports@latest

pip install -U 'python-lsp-server[all]'

