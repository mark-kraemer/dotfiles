function parse_git_branch {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

if [ -f `brew --prefix`/etc/bash_completion ]; then
. `brew --prefix`/etc/bash_completion
fi

function proml {
  local LIGHT_CYAN="\[\033[1;36m\]"
  local RED="\[\033[0;31m\]"
  local LIGHT_RED="\[\033[1;31m\]"
  local GREEN="\[\033[0;32m\]"
  local LIGHT_GREEN="\[\033[1;32m\]"
  local WHITE="\[\033[1;37m\]"
  local LIGHT_GRAY="\[\033[0;37m\]"
  case $TERM in
  xterm*)
  TITLEBAR='\[\033]0;\u@\h:\w\007\]'
  ;;
  *)
  TITLEBAR=""
  ;;
  esac

  PS1="$LIGHT_CYAN\w\n$LIGHT_GRAY[\W$LIGHT_GREEN\$(parse_git_branch)$LIGHT_GRAY]$WHITE \$ "
  PS2='> '
  PS4='+ '
}

proml

alias annotate="annotate -p before -e tests"
alias ll="ls -lahG"
alias gc="git checkout"
alias gb="git branch"
alias gs="git status"
alias gm="git merge"
alias gpush="git push"
alias gpom="git pull origin master"
alias gpo="git pull --rebase origin master"
alias gcm="git commit -m"
alias grc="git rebase --continue"
alias z="zeus"
alias subl="'/Applications/Sublime Text 2.app/Contents/SharedSupport/bin/subl'"

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

export LSCOLORS=gxfxcxdxbxegedabagacad
