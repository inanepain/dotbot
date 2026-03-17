#########################################
#		oh-my-zsh - custom: 005: aliases
# version: 1                 2025 Aug 08
#############################-###########
# scp .oh-my-zsh/custom/005-aliases.zsh philip@granny:/Users/philip/.oh-my-zsh/custom/005-aliases.zsh
#############################-###########

## command
# folderify
#####################################################################
if which folderify >/dev/null; then
  source <(folderify --completions zsh)
fi
