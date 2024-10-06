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

# Proxy settings
export http_proxy="http://172.16.2.251:3128"
export https_proxy=$https_proxy
export ftp_proxy=$http_proxy
export socks_proxy=$http_proxy
export rsync_proxy=$http_proxy
export all_proxy=$http_proxy
export HTTP_PROXY=$http_proxy
export HTTPS_PROXY=$http_proxy
export FTP_PROXY=$http_proxy
export SOCKS_PROXY=$http_proxy
export RSYNC_PROXY=$http_proxy
export ALL_PROXY=$http_proxy

export TEXINPUTS="/home/wolverine/ghq/github.com/Adhumunt/NotesTeX/NotesTeXV3/:"

# Initialize fancy shell prompt
eval "$(starship init bash)"


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/wolverine/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/wolverine/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/wolverine/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/wolverine/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# Initialize autojump functionality
eval "$(zoxide init bash)"
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

export SYSTEMD_EDITOR=nvim
