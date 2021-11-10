#!/bin/bash
echo "Argument: $1";
echo "Argument: $2";

# backup() {
  # case $1 in
    # neovim) backupNeovim;;
    # vim) backupVim;;
    # *) echo "You should specify which editor do you want to install the configs!";;
  # esac
# }

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

  rm ./nvim/plugin/packer_compiled.lua
}

installNeovim() {
  echo "Installing Neovim...";
  cp -r nvim/plugin ~/.config/nvim/plugin/
  cp -r nvim/ftplugin ~/.config/nvim/ftplugin/
  # cp -r nvim/colors ~/.config/nvim/colors/
  cp -r nvim/lua ~/.config/nvim/lua/
  cp nvim/init.lua ~/.config/nvim/
  cp .hyper.js ~
  # cp -r oh-my-zsh/aliases.zsh ~/.oh-my-zsh/custom/
  cp .zshrc ~
  cp .zshenv ~
  cp .tmux.conf ~
  cp .p10k.zsh ~
  cp config.yaml ~/Library/Application\ Support/lazygit/
}


# backupVim() {
  # echo "Backing up Vim...";
  # cp -r ~/.vim/plugin .
  # cp -r ~/.vim/ftplugin .
  # cp -r ~/.vim/colors .
  # cp ~/.vim/coc-settings.json .
  # cp ~/.vimrc .
  # cp ~/.zshenv .
  # cp ~/.hyper.js .
  # cp -r ~/.config/coc/ultisnips .
  # cp ~/.oh-my-zsh/custom/aliases.zsh .
  # cp ~/.zshrc .
  # cp ~/.tmux.conf .
  # cp ~/.p10k.zsh .
# }

# install() {
  # case $1 in
    # neovim) installNeovim;;
    # vim) installVim;;
    # *) echo "You should specify which editor do you want to install the configs!";;
  # esac
# }

# installVim() {
  # echo "Installing ViM...";
  # cp -r plugin ~/.vim
  # cp -r ftplugin ~/.vim
  # cp -r colors ~/.vim
  # cp -r coc-settings.json ~/.vim
  # cp init.vim ~/.vimrc
  # cp .hyper.js ~
  # cp -r ultisnips ~/.config/coc
  # cp -r aliases.zsh ~/.oh-my-zsh/custom/
  # cp .zshrc ~
  # cp .zshenv ~
  # cp .tmux.conf ~
  # cp .p10k.zsh ~
# }

case $1 in
  backup) backupNeovim $2;;
  install) installNeovim "$2";;
  *) echo "Option invalid!" ;;
esac
