export JAVA_8_HOME=$(/usr/libexec/java_home -v1.8)
export JAVA_11_HOME=$(/usr/libexec/java_home -v11)
export JAVA_HOME=$JAVA_8_HOME

export FZF_DEFAULT_OPTS="--multi --layout=reverse"

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
