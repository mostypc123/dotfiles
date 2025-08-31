sudo pacman -S i3 i3lock i3status dmenu picom feh
sudo pacman -S rofi
sudo pacman -S gnome-terminal

sudo pacman -S flatpak
flatpak install org.gnome.Builder
flatpak install flathub dev.vencord.Vesktop
flatpak install flathub com.vscodium.codium
flatpak install flathub com.valvesoftware.Steam

sudo pacman -S cava

sudo pacman -S zsh
chsh -s /bin/zsh

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc
