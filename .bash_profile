#
# ~/.bash_profile
#

test -f "$HOME/.bashrc" && . "$HOME/.bashrc"
test -f "$HOME/.config/bash/bashenv" && . "$HOME/.config/bash/bashenv"

[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && \
	exec /bin/sh
