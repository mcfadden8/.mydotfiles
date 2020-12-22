#!/bin/zsh
cd ~/.mydotfiles
git submodule update --init --recursive
cd ~
rm -f .gitconfig ; ln -s .mydotfiles/dotfiles/git/.gitconfig
rm -rf .vim ; ln -s .mydotfiles/vim .vim
rm -rf .zlogin; ln -s .mydotfiles/zsh/zlogin .zlogin
rm -rf .zprofile; ln -s .mydotfiles/zsh/zprofile .zprofile
rm -rf .zshenv ; ln -s .mydotfiles/zsh/zshenv .zshenv
rm -rf .zshrc ; ln -s .mydotfiles/zsh/zshrc .zshrc
