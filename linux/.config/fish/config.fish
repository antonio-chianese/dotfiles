if status is-interactive
    # Commands to run in interactive sessions can go here
end

# ALIASES

set EDITOR nvim
alias ls='exa --long --git --icons -a'
alias python='python3'
# alias school='cd /mnt/c/Users/chian/OneDrive/antonioc/school_docs/'
alias fishrc='$EDITOR ~/.config/fish/config.fish'
alias sfishrc='source ~/.config/fish/config.fish'
alias nvimrc='$EDITOR ~/.config/nvim/init.lua'
alias vimrc='$EDITOR ~/.vimrc'
alias i3rc='$EDITOR ~/.config/i3/config'
alias kittyrc='$EDITOR ~/.config/kitty/kitty.conf' 
alias md='mkdir -p'
alias rd='rmdir'
alias tree='tree -a'
alias c='clear'

# STARSHIP

starship init fish | source

# NEOFETCH

#neofetch

set fish_greeting
