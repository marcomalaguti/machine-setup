# Machine Setup Contributor Guide

## Repository model

This repository is the source of truth for machine setup and application
configuration. Modify the tracked source files here, not the active files in a
user's home directory.

The current macOS dotfiles are deployed with GNU Stow. Each package under
`dotfiles/` mirrors its destination relative to `$HOME`, and
`dotfiles/setup-with-stow.sh` creates the corresponding symlinks. For example,
edit `dotfiles/aerospace/.config/aerospace/aerospace.toml`, not
`~/.config/aerospace/aerospace.toml`.

## Changing application configuration

1. Locate the existing package in `dotfiles/<application>/` and update its
   tracked configuration file.
2. Keep its internal path aligned with the final path below `$HOME`.
3. Do not replace or edit Stow-managed symlinks directly.
4. If a configuration needs a new package, add the package to
   `dotfiles/setup-with-stow.sh`.
5. Update documentation when the repository structure or user-visible behavior
   changes.

## Dependencies and validation

- Check whether required applications and CLI tools are already listed in the
  platform's dependency manifest. For macOS, use `homebrew/Brewfile`.
- Add missing dependencies to the appropriate manifest; do not assume software
  is installed manually.
- Run the smallest relevant validation supported by the changed tool.
- Verify that the affected deployed path is a symlink to the expected source
  package when working on a configured machine.
- Run `git diff --check` and leave unrelated working-tree changes untouched.

## Platform and machine support

The current bootstrap flow targets macOS: `bootstrap.sh` runs macOS defaults,
Homebrew Bundle, and the Stow deployment. Preserve that behavior.

Design new setup scripts, dependency manifests, and documentation so they can
support additional machine-specific setups and Windows, Linux, or macOS
platforms. Keep platform-specific logic isolated and avoid treating the current
macOS paths or tools as repository-wide assumptions.
