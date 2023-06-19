#!/usr/bin/bash

#### Download and create toolbox for dotfiles
podman pull quay.io/jbtrystram/toolbox-dotfiles:latest
toolbox create dotfiles --image quay.io/jbtrystram/toolbox-dotfiles:latest

### Oh my zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

## Initialize dotfiles
# TODO write a script that essentially does
# cd /home/$USER
# chezmoi init jbtrystram
# podman exec dotfiles script



##### Start syncthing
echo "Starting syncthing systemd service..."
mkdir $HOME/keepass
mkdir $HOME/Sync
systmctl enable --user syncthing
systmctl start --user syncthing
systemctl --user is-active container-syncthing.service


#### Setup binaries
mkdir bin
echo "Install a few non-packaged binaries"
echo "gitsign: https://github.com/sigstore/gitsign/releases/latest"


