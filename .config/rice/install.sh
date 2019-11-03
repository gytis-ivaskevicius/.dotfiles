

# Install system packages
sudo pacman -S --needed --noconfirm - < $HOME/.config/rice/packages/system.pacman.list
yay -S --needed --noconfirm - < $HOME/.config/rice/packages/system.yay.list

curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh

npm config set prefix "$HOME"'/.local/share/npm'
# Install development packages
sudo pacman -S --needed --noconfirm - < $HOME/.config/rice/packages/development.pacman.list
yay -S --needed --noconfirm - < $HOME/.config/rice/packages/development.yay.list
npm install -g --noconfirm - < $HOME/.config/rice/packages/development.npm.list
