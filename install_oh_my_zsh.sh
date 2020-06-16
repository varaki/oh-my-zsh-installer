#!/bin/bash

# Install oh-my-zsh
sh -c "$(wget https://gitlab.com/varaki/oh-my-zsh-installer/-/raw/master/install_oh_my_zsh.sh -O -) --unattended"

# Clone plugins
mkdir -p $HOME/.oh-my-zsh/custom/{plugins,themes}
git clone https://github.com/zsh-users/zsh-autosuggestions.git $HOME/.oh-my-zsh/custom/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $HOME/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting

# Install custom theme
wget "https://gitlab.com/varaki/bubblified-varaki.zsh-theme/-/raw/master/bubblified-varaki.zsh-theme" -O - > $HOME/.oh-my-zsh/custom/themes/bubblified-varaki.zsh-theme
