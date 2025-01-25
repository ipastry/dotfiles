#
# 20-env: setup evironment variables
#

# Set editor and pager variables
set -q PAGER; or set -gx PAGER less
set -q VISUAL; or set -gx VISUAL nvim
set -q EDITOR; or set -gx EDITOR nvim

# Ensure the env.d directory exists
if not test -d ~/.config/fish/conf.d/env.d
    echo "Directory ~/.config/fish/conf.d/env.d does not exist. Creating it..."
    mkdir -p ~/.config/fish/conf.d/env.d
end

# Source all .fish files in env.d
for env_file in ~/.config/fish/conf.d/env.d/*.fish
    source $env_file
end
