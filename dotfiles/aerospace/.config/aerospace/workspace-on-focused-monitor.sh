#!/bin/zsh

set -euo pipefail

workspace="$1"

if aerospace list-workspaces --all | grep -Fxq -- "$workspace"; then
    aerospace workspace "$workspace"
    exit 0
fi

# AeroSpace creates unassigned workspaces on the main monitor, so retain the
# current monitor before creating the workspace and move it there afterwards.
monitor="$(aerospace list-monitors --focused --format '%{monitor-name}')"

aerospace workspace "$workspace"
aerospace move-workspace-to-monitor --workspace "$workspace" "$monitor"
