DOTFILES_PATH=$HOME/.dotfiles

# Correct paths (so, we handle all with $PATH)
sudo cp /etc/paths $DOTFILES_PATH/backup/paths
sudo truncate -s 0 /etc/paths

# Install framework zimfw for zsh
git clone --recursive https://github.com/zimfw/zimfw.git ${ZDOTDIR:-${HOME}}/.zim

#for template_file in ${ZDOTDIR:-${HOME}}/.zim/templates/*; do
#  user_file="${ZDOTDIR:-${HOME}}/.${template_file:t}"
#  cat ${template_file} ${user_file}(.N) > ${user_file}.tmp && mv ${user_file}{.tmp,}
#done

source ${ZDOTDIR:-${HOME}}/.zlogin

ln -s -i $DOTFILES_PATH/terminal/zsh/.zimrc $HOME/.zimrc
ln -s -i $DOTFILES_PATH/terminal/zsh/.zshrc $HOME/.zshrc

# Install Powerline fonts
git clone https://github.com/powerline/fonts.git --depth=1
cd fonts
./install.sh
cd ..
rm -rf fonts

# Change default terminal to ZSH
chsh -s $(which zsh)