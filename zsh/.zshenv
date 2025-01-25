#!/bin/zsh
#
# .zshenv - Zsh environment file, loaded always.
#

export ZDOTDIR=${ZDOTDIR:-$HOME/.config/zsh}

# XDG
export XDG_CONFIG_HOME=${XDG_CONFIG_HOME:-$HOME/.config}
export XDG_CACHE_HOME=${XDG_CACHE_HOME:-$HOME/.cache}
export XDG_DATA_HOME=${XDG_DATA_HOME:-$HOME/.local/share}
export XDG_STATE_HOME=${XDG_STATE_HOME:-$HOME/.local/state}
export XDG_PROJECTS_DIR=${XDG_PROJECTS_DIR:-$HOME/projects}
mkdir -p "$XDG_CONFIG_HOME" "$XDG_CACHE_HOME" "$XDG_DATA_HOME" "$XDG_STATE_HOME" "$XDG_PROJECTS_DIR"

# Ensure path arrays do not contain duplicates
typeset -gU cdpath fpath mailpath path

# Set the list of directories that zsh searches for commands.
path=(
	$HOME/{,s}bin(N)
	$HOME/.local/{,s}bin(N)
	/usr/local/{,s}bin(N)
	/usr/{,s}bin(/N)
	$path
)
