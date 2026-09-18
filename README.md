# machine-setup

Personal macOS machine setup: one script to bootstrap a new Mac with the apps, CLI
tools, and dotfiles I use every day, kept in sync through this repo instead of
scattered across whatever machine I'm on.

## What it does

Running `bootstrap.sh` will:

1. Install Homebrew if it's missing (or offer to update it if it's already there).
2. Apply sane macOS system defaults (Finder, Dock, trackpad).
3. Install every app and CLI tool listed in the `Brewfile`.
4. Symlink the dotfiles in this repo into `$HOME` using [GNU Stow](https://www.gnu.org/software/stow/).

## Usage

```bash
git clone <this-repo> ~/machine-setup
cd ~/machine-setup
./bootstrap.sh
```

The script is safe to re-run: it will skip installing Homebrew if present, and
Stow will only (re)create the symlinks it manages.

## Repository structure

```
.
├── bootstrap.sh              # Entry point, runs the steps below in order
├── scripts/
│   └── macos-setup.sh        # macOS system defaults (Finder, Dock, trackpad)
├── homebrew/
│   ├── Brewfile              # Every brew/cask this machine needs
│   └── homebrew-bundle.sh    # Installs the Brewfile
├── dotfiles/
│   ├── setup-with-stow.sh    # Symlinks each dotfiles/<app> package into $HOME
│   ├── zsh/                  # .zshrc
│   ├── nvim/                 # Neovim config (lazy.nvim + catppuccin)
│   ├── starship/             # Prompt config
│   ├── aerospace/            # Tiling window manager config
│   ├── ghostty/              # Terminal emulator config
│   ├── yazi/                 # Terminal file manager config
│   └── herdr/                # Herdr terminal multiplexer config
└── docs/
    └── shortcuts.md          # Personal cheat sheet for Neovim, Aerospace, Ghostty
```

Each folder under `dotfiles/` is a self-contained [Stow](https://www.gnu.org/software/stow/)
package: its internal path (e.g. `dotfiles/nvim/.config/nvim/init.lua`) mirrors
where it should end up relative to `$HOME`.

## What's installed

See `homebrew/Brewfile` for the full, up-to-date list. Roughly:

- **Shell & terminal**: eza, zoxide, starship, yazi, Ghostty
- **Editor**: Neovim (via lazy.nvim, catppuccin theme)
- **Window management**: AeroSpace
- **Git**: gh, git-delta, Git Credential Manager, LazyGit (with delta
  side-by-side diffs)
- **Dev tools**: Node (via nvm), Azure CLI, .NET SDK, PowerShell, VS Code, CocoaPods

## Roadmap

- [ ] Manage the full package list end-to-end (some tools are still installed manually).
- [ ] Automate backing up/restoring Ice (menu bar manager) settings.

## License

[MIT](LICENSE)
