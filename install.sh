#!/bin/sh
SHELL_FOLDER=$(dirname $(readlink -f "$0"))
cd $SHELL_FOLDER

# tmux
cp tmux/tmux.conf ~/.tmux.conf

# oh-my-zsh
cp ohmyzsh/zshrc ~/.zshrc
touch ~/.custom.rc
cp ohmyzsh/virtualenv.plugin.zsh ~/.oh-my-zsh/plugins/virtualenv/virtualenv.plugin.zsh