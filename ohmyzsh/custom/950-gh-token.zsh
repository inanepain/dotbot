# github token
if [[ -f ~/.gh.token ]]; then
	export GH_TOKEN="$(<~/.gh.token)"
fi
