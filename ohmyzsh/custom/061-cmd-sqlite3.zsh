#########################################
#		oh-my-zsh - custom: 005: aliases
# version: 1                 2025 Aug 08
#############################-###########
# scp .oh-my-zsh/custom/005-aliases.zsh philip@granny:/Users/philip/.oh-my-zsh/custom/005-aliases.zsh
#############################-###########

## command
# sqlite3
#####################################################################
if which sqlite3 >/dev/null; then
    alias sqlite3="sqlite3 -unsafe-testing -init ~/lib/sqlite/init.sql"
fi
