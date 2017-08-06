#if not running interactively don't load this
[[ $- != *i* ]] && return

#Don't start tmux for remote sessions
if command -v tmux > dev/null; then
  if [[ "$-" == *i* ]]; then
    [ -z "$TMUX" ] && { tmux new-session;}
  fi
fi
#PS1="[\u@\h \w]\$"

if [ $(id -u) -eq 0 ]; then
  PS1="\[\033[31m\]\u\[\033[00m\]@\[\033[01;31m\]\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ "

else
 PS1="\[\033[01;36m\]\u\[\033[00m\]@\[\033[01;37m\]\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ "
  #needs more blink
#PS1="\[\033[05;36m\]\u\[\033[00m\]@\[\033[05;37m\]\h\[\033[00m\]:\[\033[05;34m\]\w\[\033[00m\]\$ "
fi

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

alias rails_reset="rake db:drop db:create db:migrate db:seed"
alias tmux="tmux new-session -A -su main"
