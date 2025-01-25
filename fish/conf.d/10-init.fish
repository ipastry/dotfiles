#
# 10-init: handle any intial setup
#

# XDG base directories
set -q XDG_CONFIG_HOME; or set -gx XDG_CONFIG_HOME $HOME/.config
set -q XDG_DATA_HOME; or set -gx XDG_DATA_HOME $HOME/.local/share
set -q XDG_STATE_HOME; or set -gx XDG_STATE_HOME $HOME/.local/state
set -q XDG_CACHE_HOME; or set -gx XDG_CACHE_HOME $HOME/.cache

# Ensure XDG directories exist
for xdgdir in (path filter -vd $XDG_CONFIG_HOME $XDG_DATA_HOME $XDG_STATE_HOME $XDG_CACHE_HOME)
    mkdir -p $xdgdir
end

# Ensure MANPATH is set to something so we can add to it
set -q MANPATH || set -gx MANPATH ''

# Add more man page paths
for manpath in (path filter $__fish_data_dir/man /usr/local/share/man /usr/share/man)
    set -a MANPATH $manpath
end

# allow subdirs for functions and completions
set fish_function_path (path resolve $__fish_config_dir/functions/*/) $fish_function_path
set fish_complete_path (path resolve $__fish_config_dir/completions/*/) $fish_complete_path

# setup caching
if not set -q __fish_cache_dir
    if set -q XDG_CACHE_HOME
        set -U __fish_cache_dir $XDG_CACHE_HOME/fish
    else
        set -U __fish_cache_dir $HOME/.cache/fish
    end
end
test -d $__fish_cache_dir; or mkdir -p $__fish_cache_dir

# remove expired cache files
find $__fish_cache_dir -name '*.fish' -type f -mmin +1200 -delete

# fisher
init_fisher
