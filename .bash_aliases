alias rdesktop='rdesktop -g 1920x1080'
alias rails_reset='rake db:drop db:create db:migrate db:seed'
# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'
alias tmux="tmux -u new-session -A"
alias ansible='ansible -i ~/.ansible-hosts'
alias vagrant='VAGRANT_PREFER_SYSTEM_BIN=1 vagrant'
alias python='python3' 
alias vncserver='/usr/bin/vncserver -localhost -nolisten tcp -geometry 1920x1080'

