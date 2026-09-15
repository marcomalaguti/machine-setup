#!/usr/bin/env bash
set -euo pipefail

script_dir="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"

stow --ignore=\.DS_Store -d "$script_dir" -t "$HOME" nvim zsh aerospace herdr yazi starship ghostty eza
