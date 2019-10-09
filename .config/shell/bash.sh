
alias src='source ~/.bashrc'

# Terminal colors
C1="\[\e[33m\]"
C2="\[\e[34m\]"

stty -ixon 	# Disable ctrl+s
export HISTCONTROL=erasedups:ignoredups:ignorespace # Don't put duplicate lines in the history and do not add lines that start with a space
bind "set completion-ignore-case on"
shopt -s histappend # If you start a new terminal - you have old session history

PS1="\n${C1}\u@\h (${C2} \w ${C1})\$(git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ ${C1}• ${C2}\1/')${C1} • ${C2}\$(ls -1 | wc -l | sed 's: ::g') files${C1} • ${C2}\$(ls -lah | command grep -v / | command grep -m 1 total | sed 's/total //')\n${C1}====> \[\e[0m\]"

case ${TERM} in
	xterm*|rxvt*|Eterm|aterm|kterm|gnome*)
	PROMPT_COMMAND=${PROMPT_COMMAND:+$PROMPT_COMMAND; }'command history -a; printf "\033]0;%s@%s:%s\007" "${USER}" "${HOSTNAME%%.*}" "${PWD/#$HOME/\~}"'
	;;
	screen*)
	PROMPT_COMMAND=${PROMPT_COMMAND:+$PROMPT_COMMAND; }'command history -a; printf "\033_%s@%s:%s\033\\" "${USER}" "${HOSTNAME%%.*}" "${PWD/#$HOME/\~}"'
	;;
esac

