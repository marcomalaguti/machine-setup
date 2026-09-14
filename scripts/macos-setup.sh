#!/usr/bin/env bash

set -euo pipefail

# Finder
defaults write com.apple.finder AppleShowAllFiles -bool true
defaults write com.apple.finder ShowPathbar -bool true
defaults write com.apple.finder ShowStatusBar -bool true

# Dock
defaults write com.apple.dock autohide -bool true
defaults write com.apple.dock show-recents -bool false

# Trackpad
defaults write com.apple.AppleMultitouchTrackpad Clicking -bool true

# Restart affected services
killall Finder
killall Dock
