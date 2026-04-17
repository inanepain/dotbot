#########################################
#		    oh-my-zsh - custom: 000: env
# version: 1                 2025 Aug 08
#############################-###########

# Put files in this folder to add your own custom functionality.
# See: https://github.com/ohmyzsh/ohmyzsh/wiki/Customization
#
# Files in the custom/ directory will be:
# - loaded automatically by the init script, in alphabetical order
# - loaded last, after all built-ins in the lib/ directory, to override them
# - ignored by git by default
#
# Example: add custom/shortcuts.zsh for shortcuts to your local projects
#
# brainstormr=~/Projects/development/planetargon/brainstormr
# cd $brainstormr

## OPT_*
# custom bunch of variables for my own use for this or that...
#####################################################################
export OPT_VERSION="1"
export OPT_DEBUG=0

## bat
# give some colour to --help
# + more
#####################################################################
export MANPAGER="sh -c 'sed -u -e \"s/\\x1B\[[0-9;]*m//g; s/.\\x08//g\" | bat -p -lman'"
# man 2 select

## gum
# defaults
#####################################################################
export GUM_CONFIRM_SELECTED_BACKGROUND="#008a60"

## git
#####################################################################
export GIT_EDITOR=fresh
