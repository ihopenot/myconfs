#!/bin/sh
SHELL_FOLDER=$(dirname $(readlink -f "$0"))
cd $SHELL_FOLDER
set -x

# tmux
sudo apt install tmux
cp tmux/tmux.conf ~/.tmux.conf

# oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
cp ohmyzsh/zshrc ~/.zshrc
touch ~/.custom.rc
cp ohmyzsh/virtualenv.plugin.zsh ~/.oh-my-zsh/plugins/virtualenv/virtualenv.plugin.zsh
cd ~
source ~/.zshrc
cd -
