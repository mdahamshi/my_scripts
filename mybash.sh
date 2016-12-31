STR="Operation Completed :)                                          






***************************************************"
alias up='sudo apt-get -y update && sudo apt-get -y upgrade'
alias ss='pm-suspend'
alias rrr='vboxmanage controlvm xpplite savestate ; reboot'
alias bb='( speaker-test -t sine -f 1000 )& pid=$! ; sleep 0.1s ; kill -9 $pid'
alias ppp='vboxmanage controlvm xpplite savestate && poweroff'
alias xp='vboxmanage startvm xpplite'
alias xpp='vboxmanage controlvm xpplite savestate'
alias psg='ps -e | grep -i'
alias nn='bbb;notify-send "$STR"'
alias bbb='( speaker-test -t sine -f 1000 )& pid=$! ; sleep 1s ; kill -9 $pid'
alias df='df -h'
alias du='du -sh'
alias lsb='lsblk -f'
alias lss='ls -hl'
alias cdd='cd ..'
alias rmm='rm -r'
