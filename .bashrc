# .bashrc

# vi mode in bash
set -o vi

# env
export EDITOR=nvim
export VISUAL="$EDITOR"
export PATH="/home/buh/.local/bin:/home/buh/bin:/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin"

XKB_DEFAULT_LAYOUT=ca
XKB_DEFAULT_VARIANT=eng

# more nvim shit
alias vim='nvim'
alias vimcfg='nvim ~/.config/nvim/'
alias vimconf='nvim ~/.config/nvim/'
alias nvimcfg='nvim ~/.config/nvim/'
alias nvimconf='nvim ~/.config/nvim/'

alias keydconf='sudoedit /etc/keyd/default.conf && sudo keyd reload'

# alias shutdown='yes 'Y' | sudo dnf update && shutdown now'

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
    for rc in ~/.bashrc.d/*; do
        if [ -f "$rc" ]; then
            . "$rc"
        fi
    done
fi
unset rc
