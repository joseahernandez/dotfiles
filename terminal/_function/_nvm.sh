
# Lazy load of nvm the function is called equals the command
function nvm() {
  unset -f nvm # The first time that function is called, we remove it and now the nvm command is used instead the function
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
    [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

  nvm "$@"
}
