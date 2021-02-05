# Changing/making/removing directory
alias d='dirs -v | head -20'

# List directory contents
alias l='ls -F'
alias la='ls -aF'

alias ll='ls -lhF'
alias lla='ls -lhaF'

alias lt='ls -lhFt'
alias lrt='ls -lhFrt'

alias lta='ls -lahFt'
alias lrta='ls -lahFrt'

function chpwd() {
  ls -aF
}
