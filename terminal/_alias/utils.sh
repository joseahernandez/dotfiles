alias privateip='ipconfig getifaddr en0'
alias publicip="dig +short myip.opendns.com @resolver1.opendns.com"

alias aux='ps uax'
alias k='kill -9'

alias x=extract

is_port_used() {
  if [[ $# -ne 1 ]]; then
    echo "  Usage: is_port_used <port_number>"
    echo ""
    return -1
  fi

  lsof -Pi :$1
}