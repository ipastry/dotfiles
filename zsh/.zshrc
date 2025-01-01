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
# Libs
#

# Load things from lib.
for zlib in $ZDOTDIR/lib/*.zsh; source $zlib
unset zlib

#
# Aliases
#

[[ -r ${ZDOTDIR:-$HOME}/.zaliases ]] && source ${ZDOTDIR:-$HOME}/.zaliases

#
# Completions
#

# Uncomment to manually initialize completion system, or let Zephyr
# do it automatically in the zshrc-post hook.
 ZSH_COMPDUMP=${XDG_CACHE_HOME:-$HOME/.cache}/zsh/compdump
 [[ -d $ZSH_COMPDUMP:h ]] || mkdir -p $ZSH_COMPDUMP:h
 autoload -Uz compinit && compinit -i -d $ZSH_COMPDUMP

#
# Prompt
#

eval "$(starship init zsh)"


#
# Wrap up
#

# Never start in the root file system. Looking at you, Zed.
[[ "$PWD" != "/" ]] || cd

# Always return success
true


