if status is-interactive
    # Commands to run in interactive sessions can go here
end

# ALIASES
set EDITOR nvim
alias ls='exa --long --git --icons -a'
alias python='python3'
alias antonioc='cd /mnt/c/Users/chian/OneDrive/antonioc/'
alias school='cd /mnt/c/Users/chian/OneDrive/antonioc/school_docs/'
alias fishrc='$EDITOR ~/.config/fish/config.fish'
alias sfishrc='source ~/.config/fish/config.fish'
alias nvimrc='$EDITOR ~/.config/nvim/init.lua'
alias vimrc='$EDITOR ~/.vimrc'
alias alacrittyrc='$EDITOR /mnt/c/Users/chian/AppData/Roaming/alacritty/alacritty.toml'
alias glazewmrc='$EDITOR /mnt/c/Users/chian/.glaze-wm/config.yaml'
alias md='mkdir -p'
alias rd='rmdir'
alias tree='tree -a'
alias c='clear'

# BREW
eval (/home/linuxbrew/.linuxbrew/bin/brew shellenv)
# starship init fish | source
