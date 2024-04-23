export FZF_DEFAULT_OPTS="--multi --layout=reverse"

export HOMEBREW_BUNDLE_FILE_PATH="${DOTFILES_PATH}/macOS/brew/Brewfile"

export NVM_DIR="$HOME/.nvm"
export NVM_SYMLINK_CURRENT=true
export NVM_AUTO_USE=true

export ANDROID_HOME="$HOME/Library/Android/sdk"
export ANDROID_SDK_ROOT="$ANDROID_HOME"

export HOMEBREW_GITHUB_API_TOKEN=""

PATH=${DOTFILES_PATH}/bin:$PATH
PATH=/sbin:$PATH
PATH=/usr/sbin:$PATH
PATH=/usr/local/sbin:$PATH
PATH=/usr/bin:$PATH
PATH=/usr/local/opt/coreutils/libexec/gnubin:$PATH
PATH=/bin:$PATH
PATH=/usr/local/bin:$PATH
PATH=/opt/homebrew/bin:$PATH
PATH=$ANDROID_HOME/platform-tools:$PATH
PATH=$ANDROID_HOME/emulator:$PATH
PATH=$ANDROID_HOME/tools:$PATH

export PATH=$PATH
