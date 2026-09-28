#!/bin/zsh

set -euo pipefail

if [[ -x /opt/homebrew/bin/aerospace ]]; then
    aerospace=/opt/homebrew/bin/aerospace
elif [[ -x /usr/local/bin/aerospace ]]; then
    aerospace=/usr/local/bin/aerospace
else
    print -u2 'AeroSpace CLI not found in /opt/homebrew/bin or /usr/local/bin.'
    exit 127
fi

# The callback runs after AeroSpace has placed the detected window in O. Move
# O only for Outlook's first window so a manually relocated workspace stays put.
window_count="$("$aerospace" list-windows --workspace O --count)"
if [[ "$window_count" -eq 1 ]]; then
    "$aerospace" move-workspace-to-monitor --workspace O XG259QN
fi
