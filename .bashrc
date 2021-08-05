# ~/.bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Appearance
export LS_COLORS=$LS_COLORS:'di=1;94'
export PS1="\[\033[1;32m\][\w]\$\[\033[00m\] "

# Aliases
alias ls='ls --color=auto'
alias elsa='ls -lAh'
alias grep='grep --color=auto'
alias nv='nvim'
alias r='R --vanilla -q'
alias nvbp='nv ~/.bash_profile'
alias nvbenv='nv ~/.config/bash/bashenv'
alias nvbrc='nv ~/.bashrc'
alias sR='sudo R --vanilla -q'
alias aping='ping archlinux.org'
alias sm='sudo make'
alias smc='sudo make clean'
alias smi='sudo make install'
alias smic='sudo make install clean'

# from github.com/neeasade/dotfiles
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'

USERCMDS=( "list-units" "is-active" "status" "show" "help" "list-unit-files" \
	"is-enabled" "list-jobs" "show-environment" "cat" "list-timers" "suspend" )
SUDOCMDS=( "start" "stop" "reload" "restart" "try-restart" "isolate" "kill" \
	"reset-failed" "enable" "disable" "reenable" "preset" "mask" "unmask" \
	"link" "load" "cancel" "set-environment" "unset-environment" "edit" )

for c in "${USERCMDS[@]}"; do alias sc-$c="systemctl $c"; done
for c in "${SUDOCMDS[@]}"; do alias sc-$c="sudo systemctl $c"; done

USERCMDS=( "list-units" "is-active" "status" "show" "help" "list-unit-files" \
	"is-enabled" "list-jobs" "show-environment" "cat" "list-timers" "suspend" )
SUDOCMDS=( "start" "stop" "reload" "restart" "try-restart" "isolate" "kill" \
	"reset-failed" "enable" "disable" "reenable" "preset" "mask" "unmask" \
	"link" "load" "cancel" "set-environment" "unset-environment" "edit" )

for c in "${USERCMDS[@]}"; do alias scu-$c="systemctl --user $c"; done
for c in "${SUDOCMDS[@]}"; do alias scu-$c="systemctl --user $c"; done

alias jc="journalctl"
