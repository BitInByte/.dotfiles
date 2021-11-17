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

1. Neovim nightly (+0.5)
2. Packer.nvim
3. Python autopep8 is required to pretify
4. ripgrep: https://github.com/BurntSushi/ripgrep => used in Telescope
5. Patched Cascadia Code Font (Nerd Fonts)
6. MacTex

### Terminal/Homebrew

1. Tmux | Hyper
2. Cascadia code font (To got the most of this config, use a patched font from nerd fonts)
3. Oh My ZSH
4. Powerlevel10k (terminal)
5. Ranger
6. LazyGit

### Oh My ZSH

1. zsh-autosuggestions: https://github.com/zsh-users/zsh-autosuggestions - Install the oh my zsh version of it
2. zsh-syntax-highlighting: https://github.com/zsh-users/zsh-syntax-highlighting - Install the oh my zsh version of it

## Config installation

You can install this config Neovim using the start.sh file.

If you want to install you should download this config and inside of this config directory, you should run the following command:

```zsh
sudo ./start.sh install neovim
```

You should install a patched Cascadia Font and attribute it to the used terminal in order to get the icons on telescope and on nerdtree

You should install MacTex in order to compile latex documents with vimtex

## LSP Sources

In order to use the sources, you should install LSP's... Most of them you can find it via npm.

For Java however, you need to download the jdtls via milestone and copy it into a directory (I use the /Library/java directory).
Then, you should specify the path to the jdtls in the .zshenv file in order to add the path into the environment.

## Java

We need to download jdtls in order for it to work.

First of all, we need to download a milestone build from the github and we can save it whenever we want. In my case, I've just saved in /Library/Java directory.

Then, we need to update our .zshenv file in order to have all of the java related stuff in our path.

Last, we need to update the ftplugin java.lua file with the correct paths and that's it. It should then work in a java file, out of the box

### Treesiter Commands

For treesitter, only for neovim, you can install language interpreter by :TSInstall <language>
