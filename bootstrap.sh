#!/usr/bin/env bash
set -euo pipefail

script_dir="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"

if ! command -v brew &>/dev/null; then
	echo "Homebrew is required to set up this machine. Installing it now."
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
	eval "$("$(command -v brew || echo /opt/homebrew/bin/brew)" shellenv)"
else
	read -r -p "Homebrew is already installed. Update it? [y/N] " reply
	if [[ "$reply" =~ ^[Yy]$ ]]; then
		brew update && brew upgrade
	fi
fi

bash "$script_dir/scripts/macos-setup.sh"
bash "$script_dir/homebrew/homebrew-bundle.sh"
bash "$script_dir/dotfiles/setup-with-stow.sh"
