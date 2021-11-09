# Configs used by BitInByte

██████╗░██╗████████╗██╗███╗░░██╗██████╗░██╗░░░██╗████████╗███████╗
██╔══██╗██║╚══██╔══╝██║████╗░██║██╔══██╗╚██╗░██╔╝╚══██╔══╝██╔════╝
██████╦╝██║░░░██║░░░██║██╔██╗██║██████╦╝░╚████╔╝░░░░██║░░░█████╗░░
██╔══██╗██║░░░██║░░░██║██║╚████║██╔══██╗░░╚██╔╝░░░░░██║░░░██╔══╝░░
██████╦╝██║░░░██║░░░██║██║░╚███║██████╦╝░░░██║░░░░░░██║░░░███████╗
╚═════╝░╚═╝░░░╚═╝░░░╚═╝╚═╝░░╚══╝╚═════╝░░░░╚═╝░░░░░░╚═╝░░░╚══════╝

## Screen

![BitInByte IDE](workflow.png)

## Information

This config only works with Neovim +0.5. It is almost 100% Lua and ViM doesn't support it.

## External Dependencies

### Neovim

1. Neovim nightly (0.5)
2. Vim-Plug
3. Python autopep8 is required to pretify
4. ripgrep: https://github.com/BurntSushi/ripgrep (if neovim) => used in Telescope
5. Patched Cascadia Code Font (Nerd Fonts)
6. MacTex

### Terminal/Homebrew

1. Tmux
2. Cascadia code font
3. Oh My ZSH
4. Powerlevel10k (terminal)
5. Ranger

### Oh My ZSH

1. zsh-autosuggestions: https://github.com/zsh-users/zsh-autosuggestions
2. zsh-syntax-highlighting: https://github.com/zsh-users/zsh-syntax-highlighting

## Config installation

You can install this config Neovim using the start.sh file.

If you want to install you should download this config and inside of this config directory, you should run the following command:

```zsh
sudo ./start.sh install neovim
```

You should install a patched Cascadia Font and attribute it to the used terminal in order to get the icons on telescope and on nerdtree

You should install MacTex in order to compile latex documents

## LSP Sources

In order to use the sources, you should install LSP's... Most of them you can find it via npm.

For Java however, you need to download the jdtls via milestone and copy it into a directory (I use the /Library/java directory).
Then, you should specify the path to the jdtls in the .zshenv file in order to add the path into the environment.

## Java

It needs jdtls in order to work. It might also need to change the start.sh script in the ftplugin

### Treesiter Commands

For treesitter, only for neovim, you can install language interpreter by :TSInstall <language>
