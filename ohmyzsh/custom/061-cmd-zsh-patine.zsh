#########################################
#		oh-my-zsh - custom: 005: aliases
# version: 1                 2025 Aug 08
#############################-###########
# scp .oh-my-zsh/custom/005-aliases.zsh philip@granny:/Users/philip/.oh-my-zsh/custom/005-aliases.zsh
#############################-###########

## command
# zsh-patina
#####################################################################
# if which atuin >/dev/null; then
if [[ -f $(brew --prefix)/opt/zsh-patina/bin/zsh-patina ]]; then
	eval "$($(brew --prefix)/opt/zsh-patina/bin/zsh-patina activate)"
fi
