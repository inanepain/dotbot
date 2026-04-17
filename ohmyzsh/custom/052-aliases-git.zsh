# alias git submodule

(( ! $+aliases[gSf] )) && alias gSf="git submodule foreach --recursive"
(( ! $+aliases[gpa] )) && alias gpa="git push --all"
(( ! $+aliases[gpt] )) && alias gpt="git push --tags"
