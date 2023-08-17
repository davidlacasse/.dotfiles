#!/bin/bash
# add the repo
sudo add-apt-repository ppa:neovim-ppa/unstable

# update & install Neovim
sudo apt-get update
sudo apt install neovim

# install tmux
sudo apt install tmux

# install 
sudo apt install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

cp -r ./zsh/.* ~

mkdir -p ~/.local/scripts
cp -r ./.local/scripts ~/.local/scripts

sudo apt install fzf

mkdir ~/.config
cp -r nvim ~/.config

git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim

sudo apt-get install build-essential

nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync'
sudo apt install unzip
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
export NVM_DIR="$HOME/.config/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

sudo apt-get install ripgrep

sudo apt install software-properties-common
sudo add-apt-repository ppa:deadsnakes/ppa
sudo apt install python3.9 -y

nvm install --lts
nvm use --lts

npm install -g tree-sitter
npm install -g tree-sitter-cli

LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | grep -Po '"tag_name": "v\K[^"]*')
curl -Lo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/latest/download/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz"
tar xf lazygit.tar.gz lazygit
sudo install lazygit /usr/local/bin
