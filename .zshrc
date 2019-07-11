export TERM="xterm-256color"
plugins=(
git   #https://github.com/robbyrussell/oh-my-zsh/wiki/Plugin:git
gitfast
docker
mvn   #https://github.com/robbyrussell/oh-my-zsh/tree/master/plugins/mvn
grails   #https://github.com/robbyrussell/oh-my-zsh/tree/master/plugins/grails
gradle   #https://github.com/robbyrussell/oh-my-zsh/tree/master/plugins/gradle
#npm      #https://github.com/robbyrussell/oh-my-zsh/tree/master/plugins/npm
nvm
node
archlinux #https://github.com/robbyrussell/oh-my-zsh/tree/master/plugins/archlinux
systemd	  #https://github.com/robbyrussell/oh-my-zsh/tree/master/plugins/systemd
#colorize
history-substring-search)


export ZSH=/usr/share/oh-my-zsh
source $ZSH/oh-my-zsh.sh

source ~/.config/shell/zsh.sh
source ~/.config/shell/variables.sh
source ~/.config/shell/aliases.sh



#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
    export SDKMAN_DIR="/home/gytis/.sdkman"
    [[ -s "/home/gytis/.sdkman/bin/sdkman-init.sh" ]] && source "/home/gytis/.sdkman/bin/sdkman-init.sh"
