if status is-interactive
    # Commands to run in interactive sessions can go here
end

# ALIASES

set EDITOR nvim
alias ls='exa --long --git --icons -a'
alias python='python3'
alias docs='cd /home/antonioc/Documents/'
alias fishrc='$EDITOR ~/.config/fish/config.fish'
alias sfishrc='source ~/.config/fish/config.fish'
alias nvimrc='$EDITOR ~/.config/nvim/init.lua'
alias vimrc='$EDITOR ~/.vimrc'
#alias i3rc='$EDITOR ~/.config/i3/config'
alias kittyrc='$EDITOR ~/.config/kitty/kitty.conf'
alias md='mkdir -p'
alias rd='rmdir'
alias tree='tree -a'
alias c='clear'
alias hyprc='$EDITOR /home/antonioc/.config/hypr/hyprland.conf'
alias zathurarc='$EDITOR ~/.config/zathura/zathurarc'
alias temp='cp -r /home/antonioc/Documents/latex_template/ .'

# STARSHIP

starship init fish | source

# NEOFETCH

#neofetch

set fish_greeting

# Created by `pipx` on 2024-09-24 12:41:31
set PATH $PATH /home/antonioc/.local/bin
