set fish_greeting

if status is-interactive
    # Commands to run in interactive sessions can go here
end

set EDITOR nvim

alias ls="eza --icons=always --oneline --long --color=always --no-user --no-permissions --no-time --no-filesize"
alias fishrc='$EDITOR ~/.config/fish/config.fish'
alias sfishrc='source ~/.config/fish/config.fish'
alias kittyrc='$EDITOR ~/.config/kitty/kitty.conf'
alias md='mkdir -p'
alias rd='rmdir'
alias c='clear'

starship init fish | source

set -q GHCUP_INSTALL_BASE_PREFIX[1]; or set GHCUP_INSTALL_BASE_PREFIX $HOME ; set -gx PATH $HOME/.cabal/bin $PATH /home/antonioc/.ghcup/bin # ghcup-env
# Created by `pipx` on 2025-05-03 17:54:57
set PATH $PATH /home/antonioc/.local/bin
