#!/bin/bash

set -euxo pipefail

# Gemini CLI

npm install -g @google/gemini-cli

# tekton cli
dnf copr enable chmouel/tektoncd-cli
dnf install tektoncd-cli
dnf copr remove chmouel/tektoncd-cli

