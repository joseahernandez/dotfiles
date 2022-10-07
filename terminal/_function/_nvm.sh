
# Lazy load of nvm the function is called equals the command
function nvm() {
  unset -f nvm # The first time that function is called, we remove it and now the nvm command is used instead the function
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && \. "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

  nvm "$@"
}
