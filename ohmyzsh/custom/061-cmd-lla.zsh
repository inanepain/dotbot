#########################################
#		oh-my-zsh - custom: 005: aliases
# version: 1                 2025 Aug 08
#############################-###########
# scp .oh-my-zsh/custom/005-aliases.zsh philip@granny:/Users/philip/.oh-my-zsh/custom/005-aliases.zsh
#############################-###########

## command
# lla
#####################################################################
if which lla >/dev/null; then
  function j() {
    local dir=$(lla jump)
    if [ -n "$dir" ] && [ -d "$dir" ]; then
      cd "$dir"
    fi
  }
fi
