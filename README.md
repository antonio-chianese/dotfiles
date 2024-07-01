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

> ## Fish key-bindings
> - prevd/nextd: ```Alt + Left/Right Arrow```.

> ## How to set up wsl for vim and neovim
> #### Download and set up wsl, fish, tree, exa, vim and neovim
> - On windows powershell: ```wsl --install```.
> - Once wsl is installed, proceed by submitting these commands: ```sudo apt update && sudo apt upgrade && sudo apt install vim && sudo apt install neovim```.
> - In order to install fish: ```sudo apt install fish```. Once installed, you can type ```fish``` for using it only once.
> - In order to set fish to default: ```sudo chsh -s /bin/fish [user_name]```.
> - In order to see shells available: ```vi etc/shells```.
> - Install tree: ```sudo apt install tree```.
> - Install exa with git support: ```sudo apt install cargo``` and ```cargo install --vers 0.9.0 exa```. Finally: ```set -Ux fish_user_paths /home/[user_name]/.cargo/bin $fish_user_paths```. Verify that cargo has been added to $PATH: ```echo $PATH```.
> #### Install nerdfonts
> - Go to https://github.com/ryanoasis/nerd-fonts, select a font and download it.
> - Create the fonts directory: ```mkdir -p ~/.local/share/fonts```.
> - Curl the font in the fonts directory: ```curl -fLo "[font_name].ttf/otf" [github_font_link]```.
> #### Install alacritty
> - Install alacritty from the following link: https://github.com/alacritty/alacritty/releases.
> - Create the ```alacritty.yml``` file in the following path: ```%APPDATA%\alacritty\alacritty.yml```.
> - Once you are happy with the configuration just execute ```alacritty migrate``` in the windows powershell.
> - For nerdfonts, install them in windows.
> #### Create aliases
> - Modify the fish config file: ```vi ~/.config/fish/config.fish```.
> - Execute the fish config file to make modifications effective: ```source ~/.config/fish/config.fish```.
> #### Create plugin file (neovim)
> - On wsl terminal: ```mkdir ~/.config/nvim && cd ~/.config/nvim``` and then ```touch init.lua```.
> #### Create plugin file (vim)
> - On wsl terminal: ```touch ~/.vimrc```.
> #### Install and configure git
> - Install git: ```sudo apt install git```.
> - Configure git (Add email address so that when you push your changes to git hub, it knows which user did it): ```git config --global user.name "[git_user_name]"``` and ```git config --global user.email "[git_user_email]"```. Submit ```git config --list``` to see your inputs.
> - Clone your repository: ```git clone [repository_url]```.
> - If the repository is private: Git Account > Settings > Developer Settings > Personal Access Tokens > Tokens (classic). On the right, click "Generate new token" and switch it in "Generate new token (classic)". Write a note for what's the token for (i.g. repo) and choose "No expiration" in the expiration block. Go down and select "repo", and finally select generate token. Copy it in a safe place and go back to the terminal. Now write: ```git clone https://[repo_token]@github.com/[repo_url]```. 
> - To check file status: ```git status```.
> - To commit changes: ```git add .``` and ```git commit -m "[note]"``` and ```git push```.
> - Get the updated version of your repository (i.g. if you have made changes on github browser): ```git pull```.
> #### Install workspacer
> - Link: https://workspacer.org/.
> - 

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
> - https://www.youtube.com/watch?v=i-T5rJ1WkOI (GitHub private)
> - https://www.youtube.com/watch?v=0NXHv1CjxM0 (i3wm on windows)

> ## Latex Templates
> - https://github.com/SeniorMars/dotfiles/tree/master/latex_template (SeniorMars)
> - https://github.com/tecosaur/BMC (Template)
