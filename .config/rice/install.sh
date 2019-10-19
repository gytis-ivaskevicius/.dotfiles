

# Install system packages
pacman -S --needed --noconfirm - < $HOME/rice/packages/system.pacman.list
yay -S --needed --noconfirm - < $HOME/rice/packages/system.yay.list
npm install -g --noconfirm - < $HOME/rice/packages/system.npm.list

# Install development packages
pacman -S --needed --noconfirm - < $HOME/rice/packages/development.pacman.list
yay -S --needed --noconfirm - < $HOME/rice/packages/development.yay.list
npm install -g --noconfirm - < $HOME/rice/packages/development.npm.list
