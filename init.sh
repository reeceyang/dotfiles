#!/bin/bash

BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# zsh
ln -s ${BASEDIR}/.zshrc ~/.zshrc
ln -s ${BASEDIR}/.zshenv ~/.zshenv

# git
ln -s ${BASEDIR}/.gitconfig ~/.gitconfig
