if status is-interactive
    # Commands to run in interactive sessions can go here
end

# ALIASES

set EDITOR nvim
alias ls='exa --long --git --icons -a'
alias python='python3'
alias pynvenv='~/virtualenvs/nvim-venv/bin/python'
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
alias mmd='mmdc -i diagram.mmd -o diagram.png -b transparent -s 3'

# STARSHIP

starship init fish | source

# NEOFETCH

#neofetch

set fish_greeting

# Created by `pipx` on 2024-09-24 12:41:31
set PATH $PATH /home/antonioc/.local/bin
eval (/home/linuxbrew/.linuxbrew/bin/brew shellenv)

set  PATH /home/antonioc/anaconda3/bin $PATH

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
if test -f /home/antonioc/anaconda3/bin/conda
    eval /home/antonioc/anaconda3/bin/conda "shell.fish" "hook" $argv | source
else
    if test -f "/home/antonioc/anaconda3/etc/fish/conf.d/conda.fish"
        . "/home/antonioc/anaconda3/etc/fish/conf.d/conda.fish"
    else
        set -x PATH "/home/antonioc/anaconda3/bin" $PATH
    end
end
# <<< conda initialize <<<

