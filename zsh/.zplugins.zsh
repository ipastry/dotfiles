function {
  0=${(%):-%x}
  local staticfile=${0:A}
  [[ -e ${staticfile} ]] || return 1
  if [[ ! -s ${staticfile}.zwc || ${staticfile} -nt ${staticfile}.zwc ]]; then
    builtin autoload -Uz zrecompile
    zrecompile -pq ${staticfile}
  fi
}
fpath+=( $HOME/.cache/repos/mattmc3/ez-compinit )
source $HOME/.cache/repos/mattmc3/ez-compinit/ez-compinit.plugin.zsh
fpath+=( $HOME/.cache/repos/zsh-users/zsh-completions/src )
fpath+=( $HOME/.cache/repos/sindresorhus/pure )
fpath+=( $HOME/.cache/repos/mattmc3/zephyr/plugins/color )
source $HOME/.cache/repos/mattmc3/zephyr/plugins/color/color.plugin.zsh
fpath+=( $HOME/.cache/repos/mattmc3/zephyr/plugins/directory )
source $HOME/.cache/repos/mattmc3/zephyr/plugins/directory/directory.plugin.zsh
fpath+=( $HOME/.cache/repos/mattmc3/zephyr/plugins/history )
source $HOME/.cache/repos/mattmc3/zephyr/plugins/history/history.plugin.zsh
fpath+=( $HOME/.cache/repos/mattmc3/zephyr/plugins/utility )
source $HOME/.cache/repos/mattmc3/zephyr/plugins/utility/utility.plugin.zsh
fpath+=( $HOME/.cache/repos/mattmc3/zephyr/plugins/zfunctions )
source $HOME/.cache/repos/mattmc3/zephyr/plugins/zfunctions/zfunctions.plugin.zsh
fpath+=( $HOME/.cache/repos/mattmc3/zephyr/plugins/confd )
source $HOME/.cache/repos/mattmc3/zephyr/plugins/confd/confd.plugin.zsh
fpath+=( $HOME/.cache/repos/zdharma-continuum/fast-syntax-highlighting )
source $HOME/.cache/repos/zdharma-continuum/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
fpath+=( $HOME/.cache/repos/zsh-users/zsh-autosuggestions )
source $HOME/.cache/repos/zsh-users/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh
fpath+=( $HOME/.cache/repos/zsh-users/zsh-history-substring-search )
source $HOME/.cache/repos/zsh-users/zsh-history-substring-search/zsh-history-substring-search.plugin.zsh
