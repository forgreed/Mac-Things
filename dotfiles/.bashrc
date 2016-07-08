#   Prompt
PS1="\[\e[0;32m\]\W\[\e[m\\e[1;37m\] λ \[\e[m\]"

#   App-specific Paths
PATH=$PATH:/Applications/MAMP/bin/php/php5.6.10/bin
PATH=$PATH:$HOME/.rvm/bin
PATH=$PATH:$HOME/.composer/vendor/bin
PATH=$PATH:$HOME/Development/go/bin
PATH=$PATH:$HOME/.cabal/bin
PATH=$PATH:/Library/Developer/Toolchains/swift-latest.xctoolchain/usr/bin

#   Generic bin paths
PATH=$PATH:/usr/local/bin
PATH=$PATH:/opt/local/bin

export PATH

function md () { mkdir -p "$@" && eval cd "\"\$$#\""; }

#   Log History
#export PROMPT_COMMAND='if [ "$(id -u)" -ne 0 ]; then echo "$(date "+%Y-%m-%d.%H:%M:%S") $(pwd) $(history 1)" >> ~/.logs/bash-history-$(date "+%Y-%m-%d").log; fi'

#   Specific Paths
export NODE_PATH="/usr/local/lib/node_modules"
export GOPATH="/Users/$USER/Development/go/"

#   Set Default Editor
export EDITOR="/usr/bin/vim"

# git Completion
if [ -f ~/.git-completion ]; then
  . ~/.git-completion
fi

#  Bash Completion
bind "set completion-ignore-case on"
bind "set show-all-if-ambiguous on"

#  Colors
alias ls='ls -GFh'