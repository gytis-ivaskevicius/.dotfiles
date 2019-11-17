
# Colors for man-pages
export LESS_TERMCAP_mb=$'\e[1;33m'
export LESS_TERMCAP_md=$'\e[1;33m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_so=$'\e[01;33m'
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_us=$'\e[1;4;34m'

export EDITOR=nvim
export VISUAL=nvim

export PATH="$PATH:$HOME/.scripts:$HOME/.local/share/npm/bin"
export TERM="xterm-256color"

if command -v java > /dev/null; then
    export JAVA_HOME_BIN=`which java`
    export JAVA_HOME_DIR=`dirname $JAVA_HOME_BIN`
    export JAVA_HOME=`dirname $JAVA_HOME_DIR`
fi

if [ -d "~/.sdkman" ]; then
    export SDKMAN_DIR="~/.sdkman"
    [[ -s "~/.sdkman/bin/sdkman-init.sh" ]] && source "~/.sdkman/bin/sdkman-init.sh"
    source "/home/gytis/.sdkman/bin/sdkman-init.sh"
fi

if [ -d "~/.nvm" ]; then
    export NVM_DIR="$HOME/.nvm"
    [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
    [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
fi
