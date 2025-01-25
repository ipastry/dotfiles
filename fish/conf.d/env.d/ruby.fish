# Ruby-related environment variables and paths (with checks)
set -q GEM_HOME; or set -gx GEM_HOME $XDG_DATA_HOME/gem
set -q GEM_SPEC_CACHE; or set -gx GEM_SPEC_CACHE $XDG_CACHE_HOME/gem
set -q BUNDLE_USER_CONFIG; or set -gx BUNDLE_USER_CONFIG $XDG_CONFIG_HOME/bundle
set -q BUNDLE_USER_CACHE; or set -gx BUNDLE_USER_CACHE $XDG_CACHE_HOME/bundle
set -q BUNDLE_USER_PLUGIN; or set -gx BUNDLE_USER_PLUGIN $XDG_DATA_HOME/bundle
fish_add_path $GEM_HOME/bin
