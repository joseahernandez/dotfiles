#zmodload zsh/zprof

setopt PROMPT_SUBST
setopt HIST_IGNORE_ALL_DUPS

#
# User configuration sourced by interactive shells
#
export DOTFILES_PATH=$HOME/.dotfiles

# Define zim location
export ZIM_HOME=${ZDOTDIR:-${HOME}}/.zim

ZSH_AUTOSUGGEST_USE_ASYNC=true
ZSH_HIGHLIGHT_MAXLENGTH=300

# Start zim
source ${ZIM_HOME}/init.zsh


# Removing the waiting dots from completion (...). Original: ~/.zim/modules/input/init.zsh
#expand-or-complete-with-redisplay() {
#  zle expand-or-complete
#  zle redisplay
#}

source $DOTFILES_PATH/terminal/init.sh

fpath=("$DOTFILES_PATH/terminal/zsh/theme" "$DOTFILES_PATH/terminal/zsh/completions" $fpath)

autoload -Uz promptinit && promptinit
prompt hernandez

# iTerm tab name
precmd() {
  echo -ne "\e]1;$(basename "$(pwd)")\a"
}

source $DOTFILES_PATH/terminal/zsh/key-bindings.zsh

#zprof

autoload -Uz compinit
zstyle ':completion:*' menu select
fpath+=~/.zfunc

