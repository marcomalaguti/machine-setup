export XDG_CONFIG_HOME="$HOME/.config"

# Neovim as default editor
export EDITOR=nvim
export VISUAL=nvim

# Enable Zsh completion
autoload -Uz compinit
compinit

# Azure CLI
export PATH="$PATH:$HOME/.azure/bin"

# NVM (Node Version Manager)
export NVM_DIR="$HOME/.nvm"
[ -s "$(brew --prefix nvm)/nvm.sh" ] && \. "$(brew --prefix nvm)/nvm.sh"
[ -s "$(brew --prefix nvm)/etc/bash_completion.d/nvm" ] && \. "$(brew --prefix nvm)/etc/bash_completion.d/nvm"

# Zoxide
eval "$(zoxide init zsh)"

# Starship
eval "$(starship init zsh)"

# Eza
alias ls='eza --icons --group-directories-first'
alias ll='eza -lah --icons --group-directories-first --git'
alias la='eza -a --icons --group-directories-first'
alias lt='eza --tree --level=2 --icons --group-directories-first'
alias llt='eza -lah --tree --level=2 --icons --group-directories-first --git'
alias lg='eza -lah --git --icons --group-directories-first'

# Yazi
function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")"
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		builtin cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}

# Compare two files using delta
vdiff() {
    diff -u "$1" "$2" | delta --side-by-side
}
