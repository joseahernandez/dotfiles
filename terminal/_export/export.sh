export JAVA_8_HOME=$(/usr/libexec/java_home -v1.8)
export JAVA_11_HOME=$(/usr/libexec/java_home -v11)
export JAVA_13_HOME=$(/usr/libexec/java_home -v13)
export JAVA_HOME=$JAVA_8_HOME

export FZF_DEFAULT_OPTS="--reverse"

#export FZF_DEFAULT_OPTS='
#  --color=pointer:#ebdbb2,bg+:#3c3836,fg:#ebdbb2,fg+:#fbf1c7,hl:#8ec07c,info:#928374,header:#fb4934
#  --reverse
#'

PATH=${DOTFILES_PATH}/bin:$PATH
PATH=${DOTFILES_PATH}/scripts:$PATH
PATH=${JAVA_HOME}/bin:$PATH
PATH=${DOTFILES_PATH}/scripts:$PATH
PATH=/sbin:$PATH
PATH=/usr/sbin:$PATH
PATH=/usr/local/sbin:$PATH
PATH=/usr/bin:$PATH
PATH=/usr/local/opt/coreutils/libexec/gnubin:$PATH
PATH=/bin:$PATH
PATH=/usr/local/bin:$PATH

export PATH=$PATH
