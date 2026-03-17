#########################################
#		oh-my-zsh - custom: 005: aliases
# version: 1                 2025 Aug 08
#############################-###########
# scp .oh-my-zsh/custom/005-aliases.zsh philip@granny:/Users/philip/.oh-my-zsh/custom/005-aliases.zsh
#############################-###########

## command
# atuin
#####################################################################
if which atuin >/dev/null; then
  eval "$(atuin init zsh)"
fi
