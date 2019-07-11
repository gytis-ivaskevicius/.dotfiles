#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

source ~/.config/shell/variables.sh
source ~/.config/shell/aliases.sh
source ~/.config/shell/bash.sh

#######################################################
# FUNCTIONS
#######################################################

function cdl () {
	if [ -n "$1" ]; then
		builtin cd "$@" && l
	else
		builtin cd ~ && l
	fi
}

function watch_files(){
	args=$@
	to_execute="${@:-1}"

	inotifywait -e close_write,moved_to,create -m . |
	while read -r directory events filename; do
		case $args in *$filename*) $to_execute ;; esac
	done
}

function refresh_chrome(){
    focused_window_id=$(xdotool getwindowfocus)                             # remember current window
    xdotool search --onlyvisible --class "Chrome" windowfocus key 'ctrl+r'  # send keystroke to refresh
    xdotool windowactivate --sync $focused_window_id
}


function elastic(){
	case $1 in
		start) sudo systemctl start elasticsearch.service;;
		stop)  sudo systemctl stop elasticsearch.service;;
		status)  sudo systemctl status elasticsearch.service;;
		reload)  sudo systemctl restart elasticsearch.service;;
		logs)  journalctl --unit elasticsearch -f;;
		*) echo "Unrecognised command";;
	esac
}

function maria-sql(){
	case $1 in
		start) sudo systemctl start mariadb.service;;
		stop)  sudo systemctl stop mariadb.service;;
		status)  sudo systemctl status mariadb.service;;
		reload)  sudo systemctl restart mariadb.service;;
		logs)  journalctl --unit mariadb -f;;
		*) echo "Unrecognised command";;
	esac
}

extr () {
	for archive in $*; do
		if [ -f $archive ] ; then
			case $archive in
				*.7z)        7z x $archive        ;;
				*.Z)         uncompress $archive  ;;
				*.bz2)       bunzip2 $archive     ;;
				*.gz)        gunzip $archive      ;;
				*.rar)       rar x $archive       ;;
				*.tar)       tar xvf $archive     ;;
				*.tar.bz2)   tar xvjf $archive    ;;
				*.tar.gz)    tar xvzf $archive    ;;
				*.tbz2)      tar xvjf $archive    ;;
				*.tgz)       tar xvzf $archive    ;;
				*.zip)       unzip $archive       ;;
				*)           echo "don't know how to extract '$archive'..." ;;
			esac
		else
			echo "'$archive' is not a valid file!"
		fi
	done
}

function refresh_chrome() {
	WID=$(xdotool search --onlyvisible --class chrom|head -1)
	xdotool windowactivate ${WID}
	xdotool key ctrl+F5
}


#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/gytis/.sdkman"
[[ -s "/home/gytis/.sdkman/bin/sdkman-init.sh" ]] && source "/home/gytis/.sdkman/bin/sdkman-init.sh"
export PATH=$PATH:$JAVA_HOME/bin
