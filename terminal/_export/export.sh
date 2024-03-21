export JAVA_11_HOME=$(/usr/libexec/java_home -v11)
export JAVA_16_HOME=$(/usr/libexec/java_home -v16)
export JAVA_HOME=$JAVA_16_HOME

export FZF_DEFAULT_OPTS="--multi --layout=reverse"

export HOMEBREW_BUNDLE_FILE_PATH="${DOTFILES_PATH}/macOS/brew/Brewfile"

export NVM_DIR="$HOME/.nvm"
export RUBY_CONFIGURE_OPTS="--with-openssl-dir=/usr/local/opt/openssl@1.1"

export HOMEBREW_GITHUB_API_TOKEN=""

PATH=${DOTFILES_PATH}/bin:$PATH
PATH=${JAVA_HOME}/bin:$PATH
PATH=/sbin:$PATH
PATH=/usr/sbin:$PATH
PATH=/usr/local/sbin:$PATH
PATH=/usr/bin:$PATH
PATH=/usr/local/opt/coreutils/libexec/gnubin:$PATH
PATH=/bin:$PATH
PATH=/usr/local/bin:$PATH
PATH=/opt/homebrew/bin:$PATH

export PATH=$PATH
