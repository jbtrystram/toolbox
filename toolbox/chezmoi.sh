#!/bin/bash
set -euo pipefail

(curl -Lo chezmoi https://github.com/twpayne/chezmoi/releases/download/v2.43.0/chezmoi-linux-amd64
 digest=$(sha256sum chezmoi | cut -f1 -d' ')
 [ "${digest}" = 2d6ea09d5da94b959b416c72bc35478fc796b094c24ad93b139707931c535662 ]
 chmod a+x chezmoi && mv chezmoi /usr/bin/
)