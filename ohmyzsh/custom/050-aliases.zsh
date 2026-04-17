#########################################
#		oh-my-zsh - custom: 005: aliases
# version: 1                 2025 Aug 08
#############################-###########
# scp .oh-my-zsh/custom/005-aliases.zsh philip@granny:/Users/philip/.oh-my-zsh/custom/005-aliases.zsh
#############################-###########

## aliases
# directory: named
#####################################################################
develop=~/Sites/blackbetty
developer=~/Developer
inanefw=~/Sites/inane-fw
repos=~/Developer/Repositories
icloud=/Users/philip/Library/Mobile\ Documents/com\~apple\~CloudDocs
: ~develop ~developer ~repos ~icloud ~inanefw

## aliases
# standard: changing directory
#####################################################################
alias d='dirs -v | head -10'
# alias 1='cd -'
# alias 2='cd -2'
# alias 3='cd -3'
# alias 4='cd -4'
# alias 5='cd -5'
# alias 6='cd -6'
# alias 7='cd -7'
# alias 8='cd -8'
# alias 9='cd -9'

# standard: tweak existing commands
#####################################################################
alias mkdir='mkdir -p'

## aliases
# global:
#####################################################################
alias -g granny="207.254.29.249"
alias -g 2dn=" 2>/dev/null"
alias -g 2pb=" |pbcopy"
alias -g 2j=" |jello"

alias -g space2newline=" |sd  -A ' ' '\n'"
alias -g space2colon=" |sd  -A ' ' ':'"
alias -g newline2space=" |sd  -A '\n' ' '"
alias -g colon2newline=" |sd  -A ':' '\n'"
alias -g colon2space=" |sd  -A ':' ' '"
alias -g newline2colon=" |sd  -A '\n' ':'"

# alias -g r2dn=" 2>/dev/null"
# alias -g mac_colours="ac:bc:32:95:41:0f"
# alias -g mac_vaieen="14:7d:da:dc:fc:a4"
# alias -g mac_wonderland="ac:bc:32:95:41:0f"
# alias -g mac_wonderland="e4:ce:8f:0f:4b:78"
# alias -g cipr="--ignore-platform-reqs"

## aliases
# global:
#####################################################################
# Mark Text
if [[ -f /Applications/MarkText.app/Contents/MacOS/MarkText ]]; then
    alias marktext=/Applications/MarkText.app/Contents/MacOS/MarkText
elif [[ -f ~/Applications/MarkText.app/Contents/MacOS/MarkText ]]; then
    alias marktext=~/Applications/MarkText.app/Contents/MacOS/MarkText
fi

#####################################################################
# Homebrew
# if [[ -f /opt/homebrew/bin/brew ]]; then
#     alias hbr="brew update"
#     alias hbu="brew upgrade"
# fi
