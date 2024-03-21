ulimit -n 65536
ulimit -u 1000

# Register Z
# /usr/local/etc/profile.d/z.sh
source "$(brew --prefix)/etc/profile.d/z.sh"


# Register alias
for alias in ${DOTFILES_PATH}/terminal/_alias/*; do source ${alias}; done

# Register export
for export in ${DOTFILES_PATH}/terminal/_export/*; do source ${export}; done

# Register function
for function in ${DOTFILES_PATH}/terminal/_function/*; do source ${function}; done
