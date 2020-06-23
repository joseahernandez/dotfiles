export JAVA_8_HOME=$(/usr/libexec/java_home -v1.8)
export JAVA_11_HOME=$(/usr/libexec/java_home -v11)
export JAVA_HOME=$JAVA_8_HOME

export FZF_DEFAULT_OPTS="--multi --layout=reverse"

export HOMEBREW_BUNDLE_FILE_PATH="${DOTFILES_PATH}/macOS/brew/Brewfile"
PATH=${DOTFILES_PATH}/bin:$PATH
PATH=${JAVA_HOME}/bin:$PATH
PATH=/sbin:$PATH
PATH=/usr/sbin:$PATH
PATH=/usr/local/sbin:$PATH
PATH=/usr/bin:$PATH
PATH=/usr/local/opt/coreutils/libexec/gnubin:$PATH
PATH=/bin:$PATH
PATH=/usr/local/bin:$PATH

export PATH=$PATH
