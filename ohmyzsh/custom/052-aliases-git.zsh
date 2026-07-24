##################################################
########## alias git submodule
##################################################

##################################################
########## create custom git aliases
##################################################
(( ! $+aliases[gSf] )) && alias gSf="git submodule foreach --recursive"
(( ! $+aliases[gpa] )) && alias gpa="git push --all"
(( ! $+aliases[gpt] )) && alias gpt="git push --tags"

##################################################
########## repurpose existing git aliases
##################################################
(( $+aliases[gd] )) && unalias gd
alias gd="git difftool --tool=araxis"
