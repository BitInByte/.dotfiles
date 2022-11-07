#!/bin/bash
echo "Argument: $1";
echo "Argument: $2";

install() {
case $1 in
  arch) installarch;;
  macos) installmacos;;
  *) echo "Option invalid!" ;;
esac
}

# update() {
# case $1 in
#   arch) updatearch;;
#   macos) updatemacos;;
#   *) echo "Option invalid!" ;;
# esac
# }

backup() {
case $1 in
  arch) backuparch;;
  macos) backupmacos;;
  *) echo "Option invalid!" ;;
esac
}


installmacos() {

  echo "Installing MacOS";

  echo "Installing required plugins...";
  brew install neovim exa ranger
  echo "Plugins installed successfully...";

  generatupdate
}

installarch() {
  echo "Installing Arch";

  echo "Installing required plugins...";
  pacman -Syu
  pacman -S neovim texlive-most texlive-lang texlive-bibtexextra texlive-fontsextra biber kitty zathura zathura-pdf-mupdf exa ranger
  echo "Plugins installed successfully...";

  generalupdate

}

backupmacos() {
  echo "Backing up Neovim...";
  rm -r ./nvim
  # mkdir -p ./oh-my-zsh
  mkdir -p ./nvim
  cp -r ~/.config/nvim/plugin ./nvim/plugin/
  cp -r ~/.config/nvim/ftplugin ./nvim/ftplugin/
  cp -r ~/.config/nvim/lua ./nvim/lua/
  cp -r ~/.config/nvim/after ./nvim/after/
  cp ~/.config/nvim/init.lua ./nvim/
  cp ~/.hyper.js .
  cp ~/.zshrc .
  cp ~/.zshenv .
  cp ~/.tmux.conf .
  cp ~/.p10k.zsh .
  cp ~/Library/Application\ Support/lazygit/config.yml .
  cp ~/.config/kitty/kitty.conf .
  # cp ~/.config/alacritty/alacritty.yml .
  cp ~/.alacritty.yml .

  rm ./nvim/plugin/packer_compiled.lua
}

generalupdate() {
  echo "Installing configs...";
  cp -r nvim/plugin ~/.config/nvim/
  cp -r nvim/ftplugin ~/.config/nvim/
  cp -r nvim/lua ~/.config/nvim/
  cp nvim/init.lua ~/.config/nvim/
  cp .hyper.js ~
  cp .zshrc ~
  cp .zshenv ~
  cp .tmux.conf ~
  cp .p10k.zsh ~
  cp config.yaml ~/Library/Application\ Support/lazygit/
  cp kitty.conf ~/.config/kitty/
  cp alacritty.yml ~/.config/alacritty/
  echo "Configs installed successfully";
}

case $1 in
  backup) backup $2;;
  install) install $2;;
  update) generalupdate;;
  *) echo "Option invalid!" ;;
esac
