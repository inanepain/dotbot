#########################################
#		oh-my-zsh - custom: 005: aliases
# version: 1                 2025 Aug 08
#############################-###########

## command
# ghq
#####################################################################
if which ghq >/dev/null; then
	function ghq-cd() {
		local repo=$(ghq list | fzf)
		[ -n "$repo" ] && cd "$(ghq root)/$repo"
	}

	function ghq-update() {
		ghq list --full-path | xargs -I{} git -C {} pull --ff-only
	}
fi
