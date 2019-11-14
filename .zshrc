source ~/.config/shell/zsh.sh
source ~/.config/shell/variables.sh
source ~/.config/shell/aliases.sh

source /usr/share/zsh/scripts/zplug/init.zsh

zplug mafredri/zsh-async, from:github
zplug sindresorhus/pure, use:pure.zsh, from:github, as:theme

zplug "~/.zplug/", from:local

zplug load

