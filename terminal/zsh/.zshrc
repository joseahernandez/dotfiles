#zmodload zsh/zprof

setopt PROMPT_SUBST
setopt HIST_IGNORE_ALL_DUPS

#
# User configuration sourced by interactive shells
#
export DOTFILES_PATH=$HOME/.dotfiles

# Define zim location
export ZIM_HOME=${ZDOTDIR:-${HOME}}/.zim

# To use brew
eval "$(/opt/homebrew/bin/brew shellenv)"

ZSH_AUTOSUGGEST_USE_ASYNC=true
ZSH_HIGHLIGHT_MAXLENGTH=300

# Start zim
[[ -s ${ZIM_HOME}/init.zsh ]] && source ${ZIM_HOME}/init.zsh

# Removing the waiting dots from completion (...). Original: ~/.zim/modules/input/init.zsh
expand-or-complete-with-redisplay() {
  zle expand-or-complete
  zle redisplay
}

# Fuzzy Autocompletion
zstyle ':completion:*' completer _complete _match _approximate
zstyle ':completion:*:approximate:*' max-errors 3 numeric
zstyle ':completion:*' matcher-list 'm:{a-z}={  A-Z}' # match upper from lower case

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


# autoload -U add-zsh-hook
# load-nvmrc() {
#   if typeset -f nvm_find_nvmrc > /dev/null; then
#     echo "there is a foo function"
#   else
#     echo "Mp"
#   fi

#   local node_version="$(nvm version)"
#   local nvmrc_path="$(nvm_find_nvmrc)"

#   if [ -n "$nvmrc_path" ]; then
#     local nvmrc_node_version=$(nvm version "$(cat "${nvmrc_path}")")
#     echo "Required node version is $nvmrc_node_version"
#     if [ "$nvmrc_node_version" != "$node_version" ]; then
#       echo "Changin node version"
#       nvm use
#     fi
#   fi
# }
# add-zsh-hook chpwd load-nvmrc

eval "$(rbenv init - zsh)"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
