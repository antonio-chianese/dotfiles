```
sudo pacman -S exa
mv .config/ .config.bak/
git clone https://github.com/antonio-chianese/dotfiles.git
rm -r .config/
mv dotfiles/linux/.config .
mv .config/fish .config.bak/
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
cd .config/fish/
nvim config.fish (copiare contenuto del file in dotfiles/linux/.config/fish/config.fish)
source config.fish
sudo chsh -s /bin/fish [user_name]
```
----- logout and re-enter to make changes effective
```
sudo pacman -S hyprpaper
touch hyprpaper.conf
```
----- copy hyprpaper.conf content
```
nvim .config/hypr/hyprland.conf
```
----- add ```exec-once = hyprpaper```
----- download fonts from https://www.nerdfonts.com/font-downloads
```
mv [downloaded-font-path] .local/share/fonts/
nvim [terminal-conf-file]
```
----- edit font
```
sudo pacman -S wl-clipboard
sudo pacman -S zathura
xdg-mime default org.pwmt.zathura.desktop application/pdf
----------------------
sudo pacman -S python python-pip
sudo pacman -S python-pynvim
sudo pacman -S texlive
```
