






#
# ~/.bashrc
#

# If not running interactively, don't do anything
#[[ $- != *i* ]] && return
#
#if [ "$TERM" = "linux" ]; then
#	echo -en "\e]P1ac4141"
#clear;
#fi

#PS1='[\u@\h \W]\$ '
PS1=' [ \W ] '

alias ls='ls --color=auto'
alias ll='exa -la'
alias ip='ip -c'
alias tmt='wine .wine/drive_c/games/Trackmania®\ Turbo/TrackmaniaTurbo.exe'
alias suspend='systemctl suspend'
alias hibernate='systemctl hibernate'
alias lck='i3lock -ufc 113355'
alias c='clear'
alias clr='printf "\ec"'
alias v='vim'
alias cal='cal -m'
alias i3='startx'
alias wm='startx ~/.xinitrc-'
alias cat='bat'
alias neofetch='neofetch --source ~/occam3.png --size 320px --gap 1'
alias trackpoint='sudo ./.bin/trackpoint/speed-sens'
alias resolution1366x768='xrandr --output eDP1 --mode 1366x768'

alias ru='trans -t russian'
alias ан='trans'
alias ?='wtf'
alias ??='tldr'

alias orphans="echo 'pacman -Rns \$(pacman -Qtdq)'"

function mcd () {
	mkdir -p "$1"
	cd "$1"
}

ttlChange () {
	if [ ! "$1" = "" ]; then
	echo $1 | sudo tee /proc/sys/net/ipv4/ip_default_ttl
	fi
	echo current value: $(cat /proc/sys/net/ipv4/ip_default_ttl)
}

alias wp='hsetroot -cover wallpapers/$(ls wallpapers |shuf -n1)'

function killthis () {
	kill -15 `ps aux|grep $1|awk '{print $2}'|head -n1`
}

fpc () {
	FP=`stat -c %a $2`
	stat -c %a $1| xargs -I{} chmod {} $2
	echo $2 \( $FP ">>" `stat -c %a $2` \)
}

PROMPT_COMMAND='history -a'

fanspeed () {
	echo level $1 |sudo tee /proc/acpi/ibm/fan
	cat  /proc/acpi/ibm/fan
}

function p () {
	CHK=$@
	if [ -e "$CHK" ]; then
		cat $@|bat --style="numbers"
	else
		$@|bat --style="numbers"
	fi

}



