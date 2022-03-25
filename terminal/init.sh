ulimit -n 65536
ulimit -u 1000

# Register Z
. /usr/local/etc/profile.d/z.sh

# Register alias
for alias in ${DOTFILES_PATH}/terminal/_alias/*; do source ${alias}; done

# Register export
for export in ${DOTFILES_PATH}/terminal/_export/*; do source ${export}; done

# Register function
for function in ${DOTFILES_PATH}/terminal/_function/*; do source ${function}; done



# Lazy load of nvm the function is called equals the command nada
#function nvm() {
#  unset -f nvm # The first time that function is called, we remove it and now the nvm command is used instead the function

#  [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion
#  [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh" # This loads nvm

#  nvm "$@"
#}

#eval "$(rbenv init -)"
