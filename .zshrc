export TERM="xterm-256color"
source /usr/share/zsh/scripts/zplug/init.zsh
#zplug "plugins/git",   from:oh-my-zsh
zplug "plugins/gitfast",   from:oh-my-zsh
zplug "plugins/docker",   from:oh-my-zsh
zplug "plugins/mvn",   from:oh-my-zsh
zplug "plugins/grails",   from:oh-my-zsh
#zplug "plugins/nvm",   from:oh-my-zsh
zplug "plugins/node",   from:oh-my-zsh
zplug "plugins/archlinux",   from:oh-my-zsh
zplug "plugins/systemd",   from:oh-my-zsh
zplug "plugins/history-substring-search",   from:oh-my-zsh
zplug "plugins/colorize",   from:oh-my-zsh

zplug mafredri/zsh-async, from:github
zplug sindresorhus/pure, use:pure.zsh, from:github, as:theme

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


#export ZSH=/usr/share/oh-my-zsh
#source $ZSH/oh-my-zsh.sh

source ~/.config/shell/zsh.sh
source ~/.config/shell/variables.sh
source ~/.config/shell/aliases.sh


# Then, source plugins and add commands to $PATH
zplug load 


#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
    export SDKMAN_DIR="/home/gytis/.sdkman"
    [[ -s "/home/gytis/.sdkman/bin/sdkman-init.sh" ]] && source "/home/gytis/.sdkman/bin/sdkman-init.sh"
