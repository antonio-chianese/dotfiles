# Vim Configuration For Windows Users
> ## Usefull informations
> #### File location
> - Files are ```~/[file/directory_name]```, so it means that those are in the following path: ```/home/[user_name]/[file/directory_name]```. So, files and directories you find here are located under your user directory.
> - Only ```.glaze-wm\config.yaml``` file has a different path, which is ```C:\Users\[user_name]\.glaze-wm\config.yaml```.
> #### Access files in windows explorer
> If using WSL, files are located in the following path (which uses the space of your main disk): ```\\wsl.localhost\[distribution_name]\home\[user_name]```. In my case is the following: ```\\wsl.localhost\Ubuntu\home\antonioc```.
> #### VIM and NEOVIM
> #### Copying files in windows clipboard (from vim to windows clip)
> Use the following command in the linux terminal: ```cat [file_name] | clip.exe```.
> #### Pasting and copying files in vim (from windows clip to vim)
> - Use the following key-binding: ```Ctrl + Shift + V```.
> - Use the following key-binding: ```"+p```.
> - The same can be done for yanking (in vim it's not necessary thanks to vim-gtk).
> #### How to add some text in visual block mode
> - Select lines in Visual block mode.
> - Press ```:``` and then type ```norm I[your_text]```.

> ## Key-bindings memory
> #### fish
> - prevd/nextd (previous/next directory): ```Alt + Left/Right Arrow```.
> #### nvim-tree.lua
> - Create a new file: ```a + [file_name]```.
> - Enter a file/Open a directory: ```Enter```.
> - Open another file: ```Space + S + V```.
> - Switch from a window to another: ```Ctrl + H/L```.
> #### y-t-c
> - ```<leader>y``` -> ```"+y```
> - ```<leader>yy``` -> ```"+yy```
> - ```<leader>Y``` -> ```"+yg_```
> #### p-f-c
> - ```<leader>p``` -> ```"+p```
> - ```<leader>P``` -> ```"+P```

> ## How to set up wsl for vim and neovim
> #### Download and set up wsl, fish, tree, exa, vim and neovim
> - On windows powershell: ```wsl --install```.
> - Once wsl is installed, proceed by submitting these commands: ```sudo apt update && sudo apt upgrade && sudo apt install vim```.
> - In order to install fish: ```sudo apt install fish```. Once installed, you can type ```fish``` for using it only once.
> - In order to set fish to default: ```sudo chsh -s /bin/fish [user_name]```.
> - In order to see shells available: ```vi etc/shells```.
> - Install tree: ```sudo apt install tree```.
> - Install exa with git support: ```sudo apt install cargo``` and ```cargo install --vers 0.9.0 exa```. Finally: ```set -Ux fish_user_paths /home/[user_name]/.cargo/bin $fish_user_paths```. Verify that cargo has been added to $PATH: ```echo $PATH```.
> #### Install NeoVim
> - Go to https://github.com/neovim/neovim-releases/releases and download ```nvim.appimage```.
> - Type ```chmod u+x ./nvim.appimage```.
> - Move it to a folder that's indexed in your $PATH env var so your computer knows what you mean when you type ```nvim```. You can check the folders in your current path by typing ```echo $PATH``` which will show you something like this: ```/usr/local/bin:/usr/bin```. Notice there are 2 folders here in this case separated by a colon (:). You will likely have more than two. ```/usr/local/bin``` is a common place to stick it. To move it there you'll need to use sudo: ```sudo mv nvim.appimage /usr/local/bin/nvim```.
> - Install fuse: ```sudo apt install fuse```.
> - Now you can type ```nvim``` and it'll open.
> - Important link: https://www.reddit.com/r/neovim/comments/f9661m/how_do_i_install_the_latest_version_of_neovim_on/.
> #### Install nerdfonts
> - Go to https://github.com/ryanoasis/nerd-fonts, select a font and download it.
> - Create the fonts directory: ```mkdir -p ~/.local/share/fonts```.
> - Curl the font in the fonts directory: ```curl -fLo "[font_name].ttf/otf" [github_font_link]```.
> - Example:
> - ```curl -fLo "Meslo LG Bold Italic Nerd Font.ttf" https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/Meslo/S/Bold-Italic/MesloLGSNerdFont-BoldItalic.ttf```.
> - ```curl -fLo "Meslo LG Bold Nerd Font.ttf" https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/Meslo/S/Bold/MesloLGSNerdFont-Bold.ttf```.
> - ```curl -fLo "Meslo LG Italic Nerd Font.ttf" https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/Meslo/S/Italic/MesloLGSNerdFont-Italic.ttf```.
> - ```curl -fLo "Meslo LG Regular Nerd Font.ttf" https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/Meslo/S/Regular/MesloLGSNerdFont-Regular.ttf```.
> #### Install alacritty
> - Install alacritty from the following link: https://github.com/alacritty/alacritty/releases.
> - Create the ```alacritty.yml``` file in the following path: ```%APPDATA%\alacritty\alacritty.yml```.
> - Once you are happy with the configuration just execute ```alacritty migrate``` in the windows powershell.
> - For nerdfonts, install them in windows.
> #### Install tabby
> - Link: https://tabby.sh/.
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
> #### Install GlazeWM
> - Link: https://github.com/glzr-io/glazewm?tab=readme-ov-file.
> - Go to the following path: ```%LOCALAPPDATA%\Microsoft\Winget\Packages\```, find the directory of GlazeWM and open it. Press 'Yes' when it asks 'Create a config file?'. Config file location: ```C:\Users\[user_name]\.glaze-wm\config.yaml```
> - Set GlazeWM to appear when you search for it in windows search: go to ```%LOCALAPPDATA%\Microsoft\Winget\Packages\```, find the directory of GlazeWM and right click it. Then create a shortcut named ```Glaze WM``` and paste it to ```C:\ProgramData\Microsoft\Windows\Start Menu\Programs```
> - Set GlazeWM to open when windows starts: go to ```C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Startup``` and copy the GlazeWM shortcut file you first created.
> #### Install vim-gtk
> - It's usefull in order to copy from Vim clipboard to windows clipboard.
> - Type on the terminal ```sudo apt install vim-gtk```.
> #### Install starship
> - Type: ```brew install starship``` and then add this to your .fishrc file: ```starship init fish | source```.
> #### Install tide
> - Update fish: ```sudo add-apt-repository ppa:fish-shell/release-3```, ```sudo apt update```, ```sudo apt upgrade``` and ```sudo apt-get install fish```.
> - Install fisher by typing: ```curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher```.
> - Type: ```fisher install IlanCosman/tide@v6``` and then ```tide configure```.

> ## How to install neovim plugins
> #### Install lazy.nvim
> - Link: https://lazy.folke.io/installation. From here copy the content of the first 2 files.
> - Type: ```sudo apt install luarocks```
> - From lazy.nvim website: "You can then create your plugin specs in ```~/.config/nvim/lua/plugins/```. Each file should return a table with the plugins you want to install".
> - See my tree structure.
> - Once plugins specs are in the plugins folder and you have finished configuring them, you can type ```:Lazy``` in neovim and then ```Maiusc + I``` to install new plugins.
> - To load plugins without exiting neovim, you can just type: ```:Lazy load [plugin_file_name].lua```.
> - Use file ```nvim/lua/init.lua``` in order to create key-bindings.
> - Once done, type ```:luafile ~/.config/nvim/init.lua``` to make edits effective.
> - Some plugins may need ripgrep: ```sudo apt install ripgrep```.
> #### Install tree-sitter-cli
> - Type: ```cargo install tree-sitter-cli```.
> #### Install lazygit
> - Install brew by following this guide: ```https://cnu.hashnode.dev/set-up-homebrew-on-linux-with-fish-shell```. Once done, type ```brew install gcc```.
> - Type: ```brew install lazygit```.
> #### Install tmux
> - Type: ```brew install tmux```.
> - To reload and install plugins: ```Ctrl + A, Shift + I```.

> ## Usefull links
> - https://www.youtube.com/watch?v=57x4ZzzCr2Y&t=938s (guide how to set up vim)
> - https://youtu.be/m8C0Cq9Uv9o?si=BO_LsPqpY51NS1Ls (get started in neovim)
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
