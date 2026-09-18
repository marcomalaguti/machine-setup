#!/bin/zsh

set -euo pipefail

if [[ "$1" == '--move-window' ]]; then
    move_window=true
    workspace="$2"
else
    move_window=false
    workspace="$1"
fi

if [[ -x /opt/homebrew/bin/aerospace ]]; then
    aerospace=/opt/homebrew/bin/aerospace
elif [[ -x /usr/local/bin/aerospace ]]; then
    aerospace=/usr/local/bin/aerospace
else
    print -u2 'AeroSpace CLI not found in /opt/homebrew/bin or /usr/local/bin.'
    exit 127
fi

if "$aerospace" list-workspaces --all | grep -Fxq -- "$workspace"; then
    if "$move_window"; then
        "$aerospace" move-node-to-workspace "$workspace"
    else
        "$aerospace" workspace "$workspace"
    fi
    exit 0
fi

# AeroSpace creates unassigned workspaces on the main monitor, so retain the
# current monitor before creating the workspace and move it there afterwards.
monitor="$("$aerospace" list-monitors --focused --format '%{monitor-name}')"

if "$move_window"; then
    "$aerospace" move-node-to-workspace "$workspace"
else
    "$aerospace" workspace "$workspace"
fi
"$aerospace" move-workspace-to-monitor --workspace "$workspace" "$monitor"
