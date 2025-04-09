# .bashrc

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
alias ll='ls -la'
alias shd='shutdown now'
alias maj='sudo ~/Documents/fedora-config-main/./config-fedora.sh'
alias gitmaj='~/Documents/FPolese-Formation-Linux/./gitmaj.sh'

PS1='\[\e[31m\]\u@\e[35m\]\h\e[31m\]:\w\$ '
