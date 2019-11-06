#!/bin/bash
#      __               __
#     / /_  ____ ______/ /_
#    / __ \/ __ `/ ___/ __ \
#   / /_/ / /_/ (__  ) / / /
#  /_.___/\__,_/____/_/ /_/
# bash runtime config file.

stty -ixon # Disable ctrl-s and ctrl-q.
shopt -s autocd # Allows you to cd into directory merely by typing the directory name.
HISTSIZE= HISTFILESIZE= # Infinite history.
export PS1='[\u@\h \W]\$ '

[ -f "$HOME/.config/aliasrc" ] && source "$HOME/.config/aliasrc"

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
