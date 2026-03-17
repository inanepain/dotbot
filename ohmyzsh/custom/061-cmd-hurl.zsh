#########################################
#		oh-my-zsh - custom: 005: aliases
# version: 1                 2025 Aug 08
#############################-###########
# scp .oh-my-zsh/custom/005-aliases.zsh philip@granny:/Users/philip/.oh-my-zsh/custom/005-aliases.zsh
#############################-###########

## command
# hurl
#####################################################################
if which hurl >/dev/null; then
  compctl -/g '*.http' hurl
fi
