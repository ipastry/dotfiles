#!/bin/zsh
#
# .aliases - Set whatever shell aliases you want.
#

# mask built-ins with better defaults
# alias cp='cp -i'
# alias mv='mv -i'
# alias rm='rm -i'
alias mkdir='mkdir -p'
alias ping='ping -c 5'
alias type='type -a'
alias nv=nvim

# more ways to ls
alias ll='ls -lh'
alias la='ls -lAh'
alias ldot='ls -ld .*'

# fix typos
alias quit='exit'
alias cd..='cd ..'
alias zz='exit'

# tar
alias tarls="tar -tvf"
alias untar="tar -xf"

# date/time
alias timestamp="date '+%Y-%m-%d %H:%M:%S'"
alias datestamp="date '+%Y-%m-%d'"
alias isodate="date +%Y-%m-%dT%H:%M:%S%z"
alias utc="date -u +%Y-%m-%dT%H:%M:%SZ"
alias unixepoch="date +%s"

# find
alias fd='find . -type d -name'
alias ff='find . -type f -name'

# misc
alias please=sudo
alias zshrc='${EDITOR:-nvim} "${ZDOTDIR:-$HOME}"/.zshrc'
#alias zbench='for i in {1..10}; do /usr/bin/time zsh -lic exit; done'
alias zdot='cd $ZDOTDIR'
#alias zcust='cd $ZSH_CUSTOM'
alias cls="clear && printf '\e[3J'"

# print things
alias println="printf '%s\n'"
alias printfuncs='print -l ${(k)functions[(I)[^_]*]} | sort'
