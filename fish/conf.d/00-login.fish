#
# 00-login: runs on login
#

# configure uwsm to use slices
# https://github.com/Vladimir-csp/uwsm
set -p UWSM_USE_SESSION_SLICE; or set -gx UWSM_USE_SESSION_SLICE true

# check if uwsm can start, then execute
if uwsm check may-start
    exec uwsm start hyprland.desktop
end
