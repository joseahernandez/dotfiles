# Better ls
alias ls='eza --icons'
alias ll='eza -lh --icons --git'
alias la='eza -lah --icons --git'

# Tree view
alias tree='eza --tree --icons'

# Reuse ls completions for eza (avoids defining a separate completion function)
compdef eza=ls

alias cat='bat'
#alias grep='rg'

# Git
alias ga='git add'
alias gc='git commit'
alias gca='git commit --amend --no-edit'
alias gco='git checkout'
alias gd='git diff'
alias gdw='git diff --word-diff'
alias gs='git status'
alias gsb='git status -sb'
alias gpr='git pull --rebase'
alias gp='git push'
alias gpra='git pull --rebase --autostash'
alias gb='git branch'