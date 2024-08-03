# Setup
1.Install Neovim
```bash
sudo apt install neovim
```
2.  Install [Packer](https://github.com/wbthomason/packer.nvim)
```bash
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
  ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```
3. Install [nvm](https://github.com/nvm-sh/nvm)
```bash
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.0/install.sh | bash
```
4. Install latest node and npm
```bash
source ~/.bashrc # or ~/.zshrc or whatever file the nvm path setup got added to from the previous command
nvm install 22 # latest as of adding this
```
6. Open Neovim and install plugins via `:PackerInstall`
