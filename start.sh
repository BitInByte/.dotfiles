#!/bin/bash
echo "Argument: $1";
echo "Argument: $2";

backupNeovim() {
  echo "Backing up Neovim...";
  rm -r ./nvim
  # rm -r ./oh-my-zsh
  mkdir -p ./oh-my-zsh
  mkdir -p ./nvim
  cp -r ~/.config/nvim/plugin ./nvim/plugin/
  # cp -r ~/.config/nvim/colors ./nvim/colors/
  cp -r ~/.config/nvim/ftplugin ./nvim/ftplugin/
  cp -r ~/.config/nvim/lua ./nvim/lua/
  cp ~/.config/nvim/init.lua ./nvim/
  cp ~/.hyper.js .
  # cp ~/.oh-my-zsh/custom/aliases.zsh ./oh-my-zsh/
  cp ~/.zshrc .
  cp ~/.zshenv .
  cp ~/.tmux.conf .
  cp ~/.p10k.zsh .
  cp ~/Library/Application\ Support/lazygit/config.yml .
  cp ~/.config/kitty/kitty.conf .
  cp ~/.config/alacritty/alacritty.yml .
  

  rm ./nvim/plugin/packer_compiled.lua
}

installNeovim() {
  echo "Installing Neovim...";
  cp -r nvim/plugin ~/.config/nvim/
  cp -r nvim/ftplugin ~/.config/nvim/
  # cp -r nvim/colors ~/.config/nvim/colors/
  cp -r nvim/lua ~/.config/nvim/
  cp nvim/init.lua ~/.config/nvim/
  cp .hyper.js ~
  # cp -r oh-my-zsh/aliases.zsh ~/.oh-my-zsh/custom/
  cp .zshrc ~
  cp .zshenv ~
  cp .tmux.conf ~
  cp .p10k.zsh ~
  cp config.yaml ~/Library/Application\ Support/lazygit/
  cp kitty.conf ~/.config/kitty/
  cp alacritty.yml ~/.config/alacritty/
}


case $1 in
  backup) backupNeovim $2;;
  install) installNeovim "$2";;
  *) echo "Option invalid!" ;;
esac
