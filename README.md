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

1. Tmux | Kitty
2. Cascadia code font (To got the most of this config, use a patched font from nerd fonts)
3. Oh My ZSH
4. Powerlevel10k (terminal)
5. Ranger
6. LazyGit
7. Zathura PDF

### Oh My ZSH

1. zsh-autosuggestions: https://github.com/zsh-users/zsh-autosuggestions - Install the oh my zsh version of it
2. zsh-syntax-highlighting: https://github.com/zsh-users/zsh-syntax-highlighting - Install the oh my zsh version of it

## Config installation

You can install this config Neovim using the start.sh file.

If you want to install you should download this config and inside of this config directory, you should run the following command:

```zsh
sudo ./start.sh install mac
```

And to update you can use the following command:
```zsh
sudo ./start.sh update mac
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

## Lua

In order for lua code formatter to work, we need to install a lua formatter, for that we can use the following command: 

```zsh
yarn global add lua-fmt
```

It's more as a workaround that could be a feature in the future to integrate it with the core nvim lsp but for now, formatter.nvim is the solution.

## Rust
In order to work with rust lsp, we need to install rls and we need to always bootstrap a new project with the help of cargo

## C#

In order to use csharp, you need to download the onisharp (https://github.com/OmniSharp/omnisharp-roslyn) and place it in "$HOME/Repositories/language-servers/omnisharp/run" if the folders doesn't exist, you should create them. You should download the omnisharp-osx.tar.gz which contain the run executable.

## Ranger

In order for ranger to work properly, we need to install a couple of dependencies. This will be applied for kitty terminal.
```zsh
brew install highlight
pip install pillow ranger-fm
```

## Anaconda

In order to use conda command, we need to perform the following command, after anaconda installation:
```zsh
~/opt/anaconda3/bin/conda init zsh
```

### Treesiter Commands

For treesitter, only for neovim, you can install language interpreter by :TSInstall <language>

### Zathura PDF

To install zathura, we need to install poppler.

Then, we can install zathura like this:
```zsh
brew install zathura --with-synctex
brew install zathura-pdf-poppler
```

We also need to follow some steps that are in the zathura brew github page.

<!-- To install zathura, we need to install the meson: -->
<!-- ```Python -->
<!-- pip3 install meson -->
<!-- ``` -->
<!---->
<!-- We also need to install popler, we can install it from the homebrew. -->
<!---->
<!-- Then, we need to install girara, zathura and zathura-pdf-popler. We only need to follow the steps on the website. -->
<!---->
<!-- Then, we need to download Zathura and build it with meson and ninja. -->
