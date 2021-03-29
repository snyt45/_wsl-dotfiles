#!/bin/bash

DOTFILES="$(pwd)"
COLOR_GRAY="\033[1;38;5;243m"
COLOR_BLUE="\033[1;34m"
#COLOR_GREEN="\033[1;32m"
#COLOR_RED="\033[1;31m"
COLOR_PURPLE="\033[1;35m"
#COLOR_YELLOW="\033[1;33m"
COLOR_NONE="\033[0m"

title() {
    echo "${COLOR_PURPLE}$1${COLOR_NONE}"
    echo "${COLOR_GRAY}==============================${COLOR_NONE}"
}

#error() {
#    echo -e "${COLOR_RED}Error: ${COLOR_NONE}$1"
#    exit 1
#}

#warning() {
#    echo -e "${COLOR_YELLOW}Warning: ${COLOR_NONE}$1"
#}

info() {
    echo "${COLOR_BLUE}Info: ${COLOR_NONE}$1"
}

#success() {
#    echo -e "${COLOR_GREEN}$1${COLOR_NONE}"
#}

title "Creating symlinks"

info "Creating zshrc symlinks"
zshrc=$DOTFILES/.zshrc
if [ ! -e "$HOME/.zshrc" ]; then
    info "Adding symlink to zshrc at $HOME/.zshrc"
    ln -s "$zshrc" ~/.zshrc
else
    info "~/.zshrc already exists... Skipping."
fi

info "installing to ~/.zsh"
if [ ! -d "$HOME/.zsh" ]; then
    info "Creating ~/.zsh"
    mkdir -p "$HOME/.zsh"
fi

zsh_files=$(find "$DOTFILES/zsh" -maxdepth 1 -name '*.zsh')
for zsh in $zsh_files; do
    target="$HOME/.zsh/$(basename "$zsh")"
    if [ -e "$target" ]; then
        info "~${target#$HOME} already exists... Skipping."
    else
        info "Creating symlink for $zsh"
        ln -s "$zsh" "$target"
    fi
done

info "Creating vim symlinks"
vimrc=$DOTFILES/.vimrc
if [ ! -e "$HOME/.vimrc" ]; then
    info "Adding symlink to vimrc at $HOME/.vimrc"
    ln -s "$vimrc" ~/.vimrc
else
    info "~/.vimrc already exists... Skipping."
fi
