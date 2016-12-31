alias up='sudo apt-get -y update && sudo apt-get -y upgrade'
alias ss='pm-suspend'
alias rrr='reboot'
alias bb='( speaker-test -t sine -f 1000 )& pid=$! ; sleep 0.1s ; kill -9 $pid'

alias xp='vboxmanage startvm xpplite'
alias xpp='vboxmanage controlvm xpplite savestate'

