# dotfiles
 
Arch Linux dotfiles managed with [GNU Stow](https://www.gnu.org/software/stow/).
 
## Covers
 
`zsh` · `vim` · `tmux` · `alacritty` · `i3` · basically my dev tools
 
## Install
 
```bash
sudo pacman -S stow git
git clone --recurse-submodules git@github.com:yourusername/dotfiles.git ~/dotfiles
cd ~/dotfiles
stow .
```
 
Then install tmux plugins inside tmux with `prefix + I`.
 
## Update
 
```bash
cd ~/dotfiles
git pull
stow .
```

> All Done: peace out

