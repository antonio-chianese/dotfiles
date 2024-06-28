# Vim Configuration For Windows Users
> ## Usefull informations
> #### File location
> Files are ```~/[file/directory_name]```, so it means that those are in the following path: ```/home/[user_name]/[file/directory_name]```. So, files and directories you find here are located under your user directory.
> #### Access files in windows explorer
> If using WSL, files are located in the following path (which uses the space of your main disk): ```\\wsl.localhost\[distribution_name]\home\[user_name]```. In my case is the following: ```\\wsl.localhost\Ubuntu\home\antonioc```.
> #### Copying files in windows clipboard (from vim to windows clip)
> Use the following command in the linux terminal: ```cat [file_name] | clip.exe```.
> #### Pasting files in vim (from windows clip to vim)
> Use the following key-binding: ```Ctrl + Shift + V```.
> #### How to add some text in visual block mode
> - Select lines in Visual block mode.
> - Press ```:``` and then type ```norm I[your_text]```.

> ## How to set up wsl for vim and neovim
> #### Download and set up wsl, fish, vim and neovim
> - On windows powershell: ```wsl --install```.
> - Once wsl is installed, proceed by submitting these commands: ```sudo apt update && sudo apt upgrade && sudo apt install vim && sudo apt install neovim```.
> - In order to install fish: ```sudo apt-get install fish```. Once installed, you can type ```fish``` for using it only once.
> - In order to set fish to default: ```sudo chsh -s /bin/fish [user_name]```.
> - In order to see shells available: ```vi etc/shells```.
> #### Create plugin file (neovim)
> - On wsl terminal: ```mkdir ~/.config/nvim && cd ~/.config/nvim``` and then ```touch init.lua```.
> #### Create plugin file (vim)
> - On wsl terminal: ```touch ~/.vimrc```.

> ## How to install plugins in neovim
> - type here

> ## Usefull links
> - https://www.youtube.com/watch?v=57x4ZzzCr2Y&t=938s (guide how to set up vim)
> - https://www.youtube.com/watch?v=ZWWxwwUsPNw (how to set up lazy vim - https://github.com/folke/lazy.nvim)
> - https://medium.com/@shaikzahid0713/installing-neovim-and-packer-package-manager-for-neovim-30e166f8495a (how to set up lazy vim - https://github.com/folke/lazy.nvim)
> - https://phoenixnap.com/kb/vim-commands-cheat-sheet (vim cheatsheet)
> - https://castel.dev/post/lecture-notes-1/ (vimtex guide)
> - https://www.youtube.com/@SeniorMarsTries/videos (SeniorMars - YouTube)
> - https://github.com/SeniorMars/dotfiles/blob/master/.config/nvim/init.lua (SeniorMars - GitHub plugins)

> ## Latex Templates
> - https://github.com/SeniorMars/dotfiles/tree/master/latex_template (SeniorMars)
> - https://github.com/tecosaur/BMC (Template)
