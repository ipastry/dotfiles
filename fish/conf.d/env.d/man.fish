# Colorize man pages.
set -q LESS_TERMCAP_mb; or set -gx LESS_TERMCAP_mb (set_color -o blue)
set -q LESS_TERMCAP_md; or set -gx LESS_TERMCAP_md (set_color -o cyan)
set -q LESS_TERMCAP_me; or set -gx LESS_TERMCAP_me (set_color normal)
set -q LESS_TERMCAP_so; or set -gx LESS_TERMCAP_so (set_color -b white black)
set -q LESS_TERMCAP_se; or set -gx LESS_TERMCAP_se (set_color normal)
set -q LESS_TERMCAP_us; or set -gx LESS_TERMCAP_us (set_color -u magenta)
set -q LESS_TERMCAP_ue; or set -gx LESS_TERMCAP_ue (set_color normal)
