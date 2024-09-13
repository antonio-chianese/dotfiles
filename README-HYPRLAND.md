```sudo pacman -S exa```
```mv .config/ .config.bak/```
```git clone https://github.com/antonio-chianese/dotfiles.git```
```rm -r .config/```
```mv dotfiles/linux/.config .```
```mv .config/fish .config.bak/
rm -r .config.bak/kitty/
mv .config/kitty .config.bak/
sudo pacman -S fish
rm -r dotfiles/
sudo pacman -S ranger
sudo pacman -S neofetch
mv .config/nvim/ .config.bak/
mv .config/ranger/ .config.bak/
sudo pacman -S starship
mv .config/starship.toml .config.bak/
rm -r .config.bak/fish/
mv .config/fish/ .config.bak/
rm -r .config/
mv .config.bak/ .config/
sudo pacman -S neovim
