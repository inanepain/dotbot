#!/usr/bin/env just --justfile

# dotfiles
# version: $Id$
# date: $Date$

set shell := ["zsh", "-cu"]
set positional-arguments
set dotenv-load

# list recipes
_default:
    @echo "$PROJECT:"
    @just --list --list-heading ''

# start
_start task='':
    echo "{{GREEN}}start{{NORMAL}}: {{task}}"

# done
_done task='':
    echo "{{GREEN}}done{{NORMAL}} {{task}}"

#region OH MY ZSH PLUGINS
# clone plugin: autoupdate
[group: 'oh-my-zsh plugins']
omz-clone-autoupdate: (_start "OMZ: plugin: autoupdate") && (_done "OMZ: plugin: autoupdate")
    #!/usr/bin/env zsh
    if [[ ! -d ~/.oh-my-zsh/custom/plugins/autoupdate ]]; then
    git clone https://github.com/tamcore/autoupdate-oh-my-zsh-plugins ~/.oh-my-zsh/custom/plugins/autoupdate
    else
    echo "\t{{BLUE}}installed: autoupdate"
    fi

# clone plugin: forgit
[group: 'oh-my-zsh plugins']
omz-clone-forgit: (_start "OMZ: plugin: forgit") && (_done "OMZ: plugin: forgit")
    #!/usr/bin/env zsh
    if [[ ! -d ~/.oh-my-zsh/custom/plugins/forgit ]]; then
    git clone https://github.com/wfxr/forgit ~/.oh-my-zsh/custom/plugins/forgit
    else
    echo "\t{{BLUE}}installed: forgit"
    fi

# clone plugin: forgit
[group: 'oh-my-zsh plugins']
omz-clone-autosuggestions: (_start "OMZ: plugin: zsh-autosuggestions") && (_done "OMZ: plugin: zsh-autosuggestions")
    #!/usr/bin/env zsh
    if [[ ! -d ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions ]]; then
    git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
    else
    echo "\t{{BLUE}}installed: zsh-autosuggestions"
    fi

# clone plugin: zsh-syntax-highlighting
[group: 'oh-my-zsh plugins']
omz-clone-syntax-highlighting: (_start "OMZ: plugin: zsh-syntax-highlighting") && (_done "OMZ: plugin: zsh-syntax-highlighting")
    #!/usr/bin/env zsh
    if [[ ! -d ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting ]]; then
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
    else
    echo "\t{{BLUE}}installed: zsh-syntax-highlighting"
    fi

# clone plugin: all
[group: 'oh-my-zsh plugins']
omz-clone-all: (_start "OMZ: plugin: all") omz-clone-autoupdate omz-clone-forgit omz-clone-autosuggestions omz-clone-syntax-highlighting && (_done "OMZ: plugin: zsh-syntax-highlighting")

#endregion OH MY ZSH PLUGINS