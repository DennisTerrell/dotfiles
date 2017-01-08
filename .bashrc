#start tmux
# If not running interactively, do not do anything
[[ $- != *i* ]] && return
[[ -z "$TMUX" ]] && exec tmux

#PS1="[\u@\h \w]\$"

if [ $(id -u) -eq 0 ]; then
  PS1="\[\033[31m\]\u\[\033[00m\]@\[\033[01;31m\]\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ "

else
 PS1="\[\033[01;36m\]\u\[\033[00m\]@\[\033[01;37m\]\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ "
  #needs more blink
 #PS1="\[\033[05;36m\]\u\[\033[00m\]@\[\033[05;37m\]\h\[\033[00m\]:\[\033[05;34m\]\w\[\033[00m\]\$ "


fi


