#!/bin/sh

cp .bash_profile "$HOME/.bash_profile"
cp .bashrc "$HOME/.bashrc"

test -d "$HOME/.config" && mkdir "$HOME/.config"

test -d "$HOME/.config/bash" && mkdir "$HOME/.config/bash"
cp .config/bash/bashenv "$HOME/.config/bash/bashenv"
