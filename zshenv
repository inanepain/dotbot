OPT_SOURCE=$(hostname)
OPT_SOURCE=${OPT_SOURCE/.local/}
OPT_SOURCE=${OPT_SOURCE/.lan/}
OPT_SOURCE=${OPT_SOURCE/.net/}
export OPT_SOURCE=${OPT_SOURCE:l}

export OPT_DEBUG="zshenv"
export ENV_PHP_VENDOR="/Users/philip/Sites/inane-fw/vendor/autoload.php"

export XDG_DATA_HOME=$HOME/.local/share
export XDG_CONFIG_HOME=$HOME/.config
export XDG_STATE_HOME=$HOME/.local/state
export XDG_CACHE_HOME=$HOME/.cache

if [[ -f /usr/local/bin/brew ]]; then
	export PATH=$PATH:/usr/local/bin:/usr/local/sbin
elif [[ -f /opt/homebrew/bin/brew ]]; then
	export PATH=$PATH:/opt/homebrew/bin:/opt/homebrew/sbin
fi

# INANE
if [[ -f "$HOME/.inane/init.zsh" ]]; then
	if [[ -z $INANE ]]; then
		eval "$(cat $HOME/.inane/init.zsh)"
	fi
fi

# FUNCTION AUTOLOADING
fpath=(~/bin/functions $fpath)
autoload ${fpath[1]}/*(:t)
