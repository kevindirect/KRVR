#!/bin/sh
#                        _____ __
#      ____  _________  / __(_) /__
#     / __ \/ ___/ __ \/ /_/ / / _ \
#    / /_/ / /  / /_/ / __/ / /  __/
#   / .___/_/   \____/_/ /_/_/\___/
#  /_/
# Login shell profile config file.

# Add `~/.local/bin/` and all subdirectories to $PATH
BLACKLIST='/.git' 	# Add more items to blacklist with <item1>\|<item2>\|<item3>...
export PATH="$PATH:$(du "$HOME/.local/bin/" | cut -f2 | grep -v "$BLACKLIST" | tr '\n' ':' | sed 's/:*$//')"~
export EDITOR="nvim"
export FILE="nnn -Hd"
export PAGER="less"

# nnn file manager
export NNN_CONTEXT_COLORS='6464'
export NNN_USE_EDITOR=1

echo "$0" | grep "bash$" >/dev/null && [ -f "$HOME/.bashrc" ] && source "$HOME/.bashrc"

sudo -n loadkeys "$HOME/.local/bin/ttymaps.kmap" 2>/dev/null
