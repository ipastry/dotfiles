#!/bin/zsh
#
# .zprofile - runs at login.
#

# Configure uwsm to use slices
export UWSM_USE_SESSION_SLICE=true

# Start hyperland with uwsm
if uwsm check may-start; then
   exec uwsm start hyprland.desktop
fi
