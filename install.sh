#!/usr/bin/env bash

set -euo pipefail

COLOR_GREEN='\033[0;32m'
COLOR_RED='\033[0;31m'
COLOR_RESET='\033[0m'

function success() { printf "  ${COLOR_GREEN}SUCCESS${COLOR_RESET} %s\n" "$1"; }
function fail() { printf "  ${COLOR_RED}FAIL${COLOR_RESET} %s\n" "$1"; }

function install() {
    name="$1"
    source="./$2"
    target="$HOME/$3"

    if [[ ! -f "$source" ]]; then
        fail "File '$source' not found"
        return 1
    fi

    if [[ -e "$target" ]]; then
        read -r -p "File '$target' already exists. Overwrite? [y/N] " answer

        case "$answer" in
            y|Y|yes|YES)
                ;;
            *)
                printf "Skipped %s install\n" "$name"
                return 0
                ;;
        esac
    fi

    if cp "$source" "$target"; then
        success "$name installed"
    else
        fail "Failed to install $file"
        return 1
    fi

    return 0
}

install git "git/.gitconfig" ".gitconfig"
install vim "vim/.vimrc" ".vimrc"
install tmux "tmux/.tmux.conf" ".tmux.conf"
