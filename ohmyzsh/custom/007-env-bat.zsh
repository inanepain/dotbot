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

## bat
# defaults
#####################################################################
if which bat >/dev/null; then
    alias bathelp='bat --plain --language=help'
    help() {
        "$@" --help 2>&1 | bathelp
    }

    alias -g -- -h='-h 2>&1 | bat --language=help --style=plain'
    alias -g -- --help='--help 2>&1 | bat --language=help --style=plain'
fi
