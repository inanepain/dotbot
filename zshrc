#########################################
#				FUNCTIONS: Start
#########################################
# Check if path is found then appends it to the path
# - use before as argument two to prepend it to the path
function add_to_path() {
	dir_test=$1
	position=${2:-after}
	if [[ -d "$dir_test" ]]; then
		if [[ "$position" == "before" ]]; then
			# echo \
			export PATH="$dir_test:$PATH"
		else
			# echo \
			export PATH="$PATH:$dir_test"
		fi
	fi
}

# Clean PATH in-place
function clean_path() {
  emulate -L zsh
  setopt extendedglob

  typeset -a newpath
  typeset -A seen

  local p
  for p in ${(s/:/)PATH}; do
    # skip empty, non-dirs, or already seen
    [[ -n "$p" && -d "$p" && -z "${seen[$p]}" ]] || continue
    newpath+="$p"
    seen[$p]=1
  done

  PATH="${(j/:/)newpath}"
}

function hasSoftware() {
	if which $1 >/dev/null; then
		return 0
	else
		msg "Missing Software: $Red$1"
		return 1
	fi
}

# Lines configured by zsh-newuser-install
setopt autocd extendedglob
unsetopt nomatch
bindkey -e
tabs -4
# End of lines configured by zsh-newuser-install
# If you come from bash you might have to change your $PATH.
add_to_path /usr/local/mysql-9.3.0-macos15-arm64/bin "before"
add_to_path $HOME/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin "before"
add_to_path $HOME/.composer/vendor/bin "before"
add_to_path /usr/local/bin "before"
add_to_path /opt/homebrew/bin "before"
add_to_path $HOME/.local/bin "before"
add_to_path $HOME/bin "before"
add_to_path /opt/homebrew/opt/sqlite/bin "before"

bindkey -e
# Prompt for spelling correction of commands.
#setopt CORRECT

# Customize spelling correction prompt.
SPROMPT='zsh: correct %F{red}%R%f to %F{green}%r%f [nyae]? '
# Remove path separator from WORDCHARS.
WORDCHARS=${WORDCHARS//[\/]/}

# zsh-autosuggestions
# Customize the style that the suggestions are shown with.
# See https://github.com/zsh-users/zsh-autosuggestions/blob/master/README.md#suggestion-highlight-style
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=10'

# zsh-syntax-highlighting
# Set what highlighters will be used.
# See https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/docs/highlighters.md
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets)

# Path to your zim installation.
ZIM_HOME=${ZDOTDIR:-${HOME}}/.zim

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':zim:update' mode disabled  # disable automatic updates
zstyle ':zim:update' mode auto # update automatically without asking
# zstyle ':zim:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':zim:update' frequency 13
zstyle ':zim:update' frequency 6

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

ZIM_CONFIG_FILE=~/.config/zsh/zimrc

## config
# zstyle ':zim:plugins:eza' 'dirs-first' yes
# zstyle ':zim:plugins:eza' 'icons' yes
# zstyle ':zim:plugins:eza' 'size-prefix' si
zstyle ':zim:git' aliases-prefix 'g'

zstyle :zim:plugins:iterm2 shell-integration yes

# export STARSHIP_CONFIG=~/.config/starship/default.toml
# export STARSHIP_CONFIG=~/.config/starship/develop.toml
export STARSHIP_CONFIG=~/.config/starship/playground.toml

# Install missing modules and update ${ZIM_HOME}/init.zsh if missing or outdated.
if [[ ! ${ZIM_HOME}/init.zsh -nt ${ZIM_CONFIG_FILE:-${ZDOTDIR:-${HOME}}/.zimrc} ]]; then
	source /opt/homebrew/opt/zimfw/share/zimfw.zsh init
fi

# User configuration
# zstyle ':zim:plugins:eza' 'dirs-first' yes
# zstyle ':zim:plugins:eza' 'icons' yes
# zstyle ':zim:plugins:eza' 'size-prefix' si

zstyle ':zim:plugins:alias-finder' autoload yes        # disabled by default
zstyle ':zim:plugins:alias-finder' include-longer yes  # disabled by default
zstyle ':zim:plugins:alias-finder' include-exact yes   # disabled by default
zstyle ':zim:plugins:alias-finder' include-shorter yes # disabled by default

export MANPATH="/usr/share/man:/usr/local/share/man:/usr/X11/man:/Library/Apple/usr/share/man:$MANPATH"
export MANPATH="$HOME/man:/opt/homebrew/share/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
	export EDITOR=fresh
else
	export EDITOR=code
fi
export VISUAL="$EDITOR"

# Compilation flags
# export ARCHFLAGS="-arch $(uname -m)"
source /Users/philip/.config/op/plugins.sh
add_to_path "/opt/homebrew/opt/ruby/bin" "before"

# INANE
# term app
# - Apple_Terminal
# - iTerm.app
# - ghostty
# - xterm-kitty
[[ ! -z $TERM_PROGRAM ]] && INANE_TERM_PROGRAM=$TERM_PROGRAM || INANE_TERM_PROGRAM=$TERM

INANE_SHELL_TYPE=0
# test interactive shell
if [[ -o interactive ]]; then
	INANE_SHELL_TYPE=1
	# test stdin is a terminal
	if [[ -t 0 ]]; then
		INANE_SHELL_TYPE=2
	fi
fi

if [ -z "$INTELLIJ_ENVIRONMENT_READER" ]; then
	source ${ZIM_HOME}/init.zsh
	# eval "$(clippy completion zsh)"
	# PROG=tea _CLI_ZSH_AUTOCOMPLETE_HACK=1 source "/Users/philip/Library/Application Support/tea/autocomplete.zsh"
	export GEMINI_API_KEY="AIzaSyBfcbh4CWayxDJD4WCAzi3DUtJnkAyhe-g"
	eval "$(intelli-shell init zsh)"
fi

[ ! -f "$HOME/.x-cmd.root/X" ] || . "$HOME/.x-cmd.root/X" # boot up x-cmd.

# inane autoload
# eval "$(clippy completion zsh)"

if [[ $INANE_SHELL_TYPE -gt 0 ]]; then
	for f in ~/.oh-my-zsh/custom/*.zsh; do source $f; done

	if [[ $(hostname) = "BlackBetty.local" ]]; then
		~/Sites/blackbetty/bin/fortune
	fi
fi

# export DASHT_DOCSETS_DIR=/Users/philip/Library/Application\ Support/Dash/DocSets/