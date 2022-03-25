export JAVA_8_HOME=$(/usr/libexec/java_home -v1.8)
export JAVA_11_HOME=$(/usr/libexec/java_home -v11)
#export JAVA_13_HOME=$(/usr/libexec/java_home -v13)
export JAVA_17_HOME=$(/usr/libexec/java_home -v17)
export JAVA_HOME=$JAVA_17_HOME

export FZF_DEFAULT_OPTS="--multi --layout=reverse"

export HOMEBREW_BUNDLE_FILE_PATH="${DOTFILES_PATH}/macOS/brew/Brewfile"

export NVM_DIR="$HOME/.nvm"
export RUBY_CONFIGURE_OPTS="--with-openssl-dir=/usr/local/opt/openssl@1.1"

export GOPATH="$HOME/go"

PATTH=${GOPATH}/bin:$PATH
PATH=${DOTFILES_PATH}/bin:$PATH
PATH=${JAVA_HOME}/bin:$PATH
PATH=/sbin:$PATH
PATH=/usr/sbin:$PATH
PATH=/usr/local/sbin:$PATH
PATH=/usr/bin:$PATH
PATH=/usr/local/opt/coreutils/libexec/gnubin:$PATH
PATH=/bin:$PATH
PATH=/usr/local/bin:$PATH

# For Creditas
PATH=$HOME/.rbenv/bin:$PATH
PATH=$HOME/creditas/bin:$PATH
PATH=$PATH:$ANDROID_HOME/emulator
PATH=$PATH:$ANDROID_HOME/tools
PATH=$PATH:$ANDROID_HOME/tools/bin
PATH=$PATH:$ANDROID_HOME/platform-tool
PATH=$PATH:~/Library/Python/3.9/bin/

export ANDROID_HOME=$HOME/Library/Android/sdk

# End Creditas

export PATH=$PATH
