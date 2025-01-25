#!/bin/zsh
#
# .zshrc - Run on interactive Zsh session.
#

#
# Zstyles
#

# Load .zstyles file with customizations.
[[ -r ${ZDOTDIR:-$HOME}/.zstyles ]] && source ${ZDOTDIR:-$HOME}/.zstyles

#
# Theme
#

# Set prompt theme
typeset -ga ZSH_THEME
zstyle -a ':zephyr:plugin:prompt' theme ZSH_THEME ||
ZSH_THEME=(starship mmc)

# Set helpers for antidote.
is-theme-starship() { [[ "$ZSH_THEME" == starship* ]] }


#
# Libs
#

# Load things from lib.
for zlib in $ZDOTDIR/lib/*.zsh; source $zlib
unset zlib

#
# Aliases
#

#[[ -r ${ZDOTDIR:-$HOME}/.zaliases ]] && source ${ZDOTDIR:-$HOME}/.zaliases

#
# Completions
#

# Uncomment to manually initialize completion system, or let Zephyr
# do it automatically in the zshrc-post hook.
# ZSH_COMPDUMP=${XDG_CACHE_HOME:-$HOME/.cache}/zsh/compdump
# [[ -d $ZSH_COMPDUMP:h ]] || mkdir -p $ZSH_COMPDUMP:h
# autoload -Uz compinit && compinit -i -d $ZSH_COMPDUMP

#
# Prompt
#
#eval "$(starship init zsh)"

# Uncomment to manually set your prompt, or let Zephyr do it automatically in the
# zshrc-post hook. Note that some prompts like powerlevel10k may not work well
# with post_zshrc.
#setopt prompt_subst transient_rprompt
#autoload -Uz promptinit && promptinit
#prompt "$ZSH_THEME[@]"

#
# Fetch
#

fastfetch

#
# Wrap up
#

# Never start in the root file system. Looking at you, Zed.
[[ "$PWD" != "/" ]] || cd

# Manually call post_zshrc to bypass the hook
(( $+functions[run_post_zshrc] )) && run_post_zshrc

# Always return success
true
