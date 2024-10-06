if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Hide annoying fish greeting
set fish_greeting

# Initialize fancy shell prompt
starship init fish | source

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
if test -f /home/wolverine/miniconda3/bin/conda
    eval /home/wolverine/miniconda3/bin/conda "shell.fish" "hook" $argv | source
else
    if test -f "/home/wolverine/miniconda3/etc/fish/conf.d/conda.fish"
        . "/home/wolverine/miniconda3/etc/fish/conf.d/conda.fish"
    else
        set -x PATH "/home/wolverine/miniconda3/bin" $PATH
    end
end
# <<< conda initialize <<<

# Initialize autojump functionality
zoxide init --cmd j fish | source

# Abbreviations
abbr -a a " ani-cli"
abbr -a ax "axel -n64"
abbr -a c "clear"
abbr -a d "dfzf"
abbr -a da "sudo dnf autoremove"
abbr -a dp "sudo dnf update"
abbr -a di "sudo dnf install"
abbr -a dr "sudo dnf remove"
abbr -a du "dust"
abbr -a e "exit"
abbr -a ef "exec fish"
abbr -a f "fzf -q \"'\""
abbr -a gf "cd ~/ghq/(ghq list | fzf --no-multi --preview 'ls ~/ghq/{}')"
abbr -a gg "ghq get"
abbr -a h "htop"
abbr -a k9 "kill -9"
abbr -a l "lazygit"
abbr -a n "nvidia-smi"
abbr -a o "open ."
abbr -a r "lf"
abbr -a rm "rm -i"
abbr -a sa "ssh adoor -t fish"
abbr -a hg "kitten hyperlinked_grep"
abbr -a lg " mpv --no-video --vo=null --ytdl-format='bestaudio/best' 'https://www.youtube.com/watch?v=jfKfPfyJRdk'"
abbr -a y " ytfzf -s"
abbr -a m " mov-cli"
abbr -a t "trash --verbose"
abbr -a te "trash-empty"
abbr -a tl "trash-list"
abbr -a ts "trash-restore"
abbr -a kk "kitty +kitten"
abbr -a lo " lobster"
abbr -a se "sudoedit"
abbr -a sc "sudo cp"
abbr -a sm "sudo mv"
abbr -a sr "sudo rm -i"
abbr -a rs "rsync -avhP"
abbr -a p "pueue"
abbr -a pa "pueue add"
abbr -a pg "pueue group -g"
abbr -a pl "pueue log"
abbr -a pp "pueue parallel -g"
abbr -a . "cd /run/user/1000/gvfs/sftp:host=adoor/(ssh -T adoor pwd)/(pwd | grep -o 'Work.*') && pwd"
abbr -a fk "fkill"

# Aliases
alias bell="echo -e '\a'"
alias ll="eza -l --hyperlink --icons"
alias lt="eza -l --hyperlink --icons --sort=modified --reverse"
alias pc="nmcli connection up nl-free-102055.protonvpn.udp"
alias pd="nmcli connection down nl-free-102055.protonvpn.udp"
alias vi="nvim"
alias pip="~/miniconda3/bin/pip"
alias pip3="~/miniconda3/bin/pip3"
alias lf="lfcd"

# Proxy settings
export http_proxy="http://172.16.2.251:3128"
export https_proxy=$http_proxy
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

# CUDA library path
set -x LD_LIBRARY_PATH /usr/local/cuda/lib64

eval (/home/linuxbrew/.linuxbrew/bin/brew shellenv)

# Hide all nvcc warnings
export NVCC_APPEND_FLAGS='-w'

set -x FZF_DEFAULT_OPTS "--color=fg:#f8f8f2,bg:#282a36,hl:#bd93f9 \
    --color=fg+:#f8f8f2,bg+:#44475a,hl+:#bd93f9 \
    --color=info:#ffb86c,prompt:#50fa7b,pointer:#ff79c6 \
    --color=marker:#ff79c6,spinner:#ffb86c,header:#6272a4 \
    --height 40% --layout=reverse --multi --bind 'ctrl-a:toggle-all'"

set -gx EDITOR /usr/bin/nvim

export TEXINPUTS="/home/wolverine/ghq/github.com/Adhumunt/NotesTeX/NotesTeXV3:"

export SYSTEMD_EDITOR=nvim

export QUARTO_DENO="$HOME/miniconda3/bin/deno"

export OPEN_IN_EDITOR="/home/wolverine/.local/bin/nvim-hosted"

# # Use maximum compression and all cores while creating tar.xz files
# export XZ_DEFAULTS="-9 -T 0 "
# Use all cores while creating tar.xz files
export XZ_DEFAULTS="-T 0 "
