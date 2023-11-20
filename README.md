# Configs used by Me ;)

<!-- ██████╗░██╗████████╗██╗███╗░░██╗██████╗░██╗░░░██╗████████╗███████╗ -->
<!-- ██╔══██╗██║╚══██╔══╝██║████╗░██║██╔══██╗╚██╗░██╔╝╚══██╔══╝██╔════╝ -->
<!-- ██████╦╝██║░░░██║░░░██║██╔██╗██║██████╦╝░╚████╔╝░░░░██║░░░█████╗░░ -->
<!-- ██╔══██╗██║░░░██║░░░██║██║╚████║██╔══██╗░░╚██╔╝░░░░░██║░░░██╔══╝░░ -->
<!-- ██████╦╝██║░░░██║░░░██║██║░╚███║██████╦╝░░░██║░░░░░░██║░░░███████╗ -->
<!-- ╚═════╝░╚═╝░░░╚═╝░░░╚═╝╚═╝░░╚══╝╚═════╝░░░░╚═╝░░░░░░╚═╝░░░╚══════╝ -->

## Screen

![BitInByte IDE](workflow.png)

## Information

This config only works with Neovim +0.8. It is almost 100% Lua and ViM doesn't support it.

Previously this config used yank to clipboard out of the box with no need to use registers.
Now, this feature is removed from the config. Since registers handle this out of the box, just use the + register.
you can yank like this:

```
"+yy
```

And paste it like this:

```
"+p
```

You can also access the register from command line:

```
:reg +
```

And from insert mode:

```
<C-r>+
```

The author plans to create a youtube video explaining how registers works.

## Window Manager

This config uses yabai to manage windows in similar way as awesome wm in arch linux. There are some settings that need to be changed though. In order to be able to use it, we need to first, create a couple of workspaces (in my case I have 4 which i think is enough) and then enable the following settings:

keyboard => keyboard shortcuts => Mission Control => mission control => enable all switch to desktop options.
accessibility => display => reduce motion on
Desktop & Dock => Mission Control => Automatically arrange spaces based on most recent use => disable

Then, in order to use raycast which is way faster than spotlight, we need to disable spotlight. To do so, we disable the follow settings:

keyboard => keyboard shortcuts => spotlight => disable all options

This config also uses sketchybar. In order for you to use it, you just only need to install sketchybar and automatically hide the native menu bar:

desktop & dock => Menu Bar => Automatically hide and show applications

## External Dependencies

### Terminal/Homebrew

1. Tmux | Kitty
2. IBM Plex Font (Patched nerd font)
<!-- 2. Cascadia code font (To got the most of this config, use a patched font from nerd fonts) -->
3. Oh My ZSH
4. Powerlevel10k (terminal)
5. Ranger
6. LazyGit
7. LazyDocker
8. Zathura PDF
9. Sketchybar
10. Yabai
11. Raycast
12. MacTex (For latex - install from official webpage)
13. Z (cd helper)

### Neovim

1. Neovim nightly (+0.8)
2. Packer.nvim
<!-- 3. Python autopep8 is required to pretify -->
3. ripgrep: https://github.com/BurntSushi/ripgrep => used in Telescope
<!-- 4. Patched Cascadia Code Font (Nerd Fonts) (Old font) -->
4. Patched Victor Mono Font (Nerd Fonts)
5. Patched IBM Plex Mono Font (Nerd Fonts) (Blex Mono)
6. MacTex

To install a new LSP, you just only need to go to lua => core => lsp => providers and copy the boilerplate file using the name of your lsp you want to use.
Then, you need to update the lsps table in lsp => init.lua with that file you just created and that's it. Just restart neovim and Mason will install everything for you out of the box. Don't forget to also use the on_attach from args that boilerplate file already forwards.

<!-- ### Packer -->
<!---->
<!-- In order to be able to benefit from the lazyloading, packer need to be synchronized and/or compiled to create the lazy loading file. Trust me, it's a huge difference on startup time, I've discovered in my hard way. -->
<!-- Also, the config tag on packer config only works if we synchronize or compile the packer. -->

### Oh My ZSH

1. zsh-autosuggestions: https://github.com/zsh-users/zsh-autosuggestions - Install the oh my zsh version of it
2. zsh-syntax-highlighting: https://github.com/zsh-users/zsh-syntax-highlighting - Install the oh my zsh version of it

## Config installation

You just only need to copy the config files you want to use and it should work. If it throws an error, just try to open the editor a couple of times so that all external dependencies finish installation.

<!-- You can install this config Neovim using the start.sh file. -->
<!---->
<!-- If you want to install you should download this config and inside of this config directory, you should run the following command: -->
<!---->
<!-- ```zsh -->
<!-- sudo ./start.sh install mac -->
<!-- ``` -->
<!---->
<!-- And to update you can use the following command: -->
<!---->
<!-- ```zsh -->
<!-- sudo ./start.sh update mac -->
<!-- ``` -->
<!---->
<!-- You should install a patched Cascadia Font and attribute it to the used terminal in order to get the icons on telescope and on nerdtree -->
<!---->
<!-- You should install MacTex in order to compile latex documents with vimtex -->

## LSP Sources

Most of the LSPs will be detected from the filetype and if they are being required on lsp side, mason will detect and install the lsps. Some are still not supported and need to be installed manually though.

<!-- In order to use the sources, you should install LSP's... Most of them you can find it via npm. -->
<!---->
<!-- For Java however, you need to download the jdtls via milestone and copy it into a directory (I use the /Library/java directory). -->
<!-- Then, you should specify the path to the jdtls in the .zshenv file in order to add the path into the environment. -->
<!---->
<!-- Most of the lsp's require .git in order to be able to find the root directory. -->

## JavaScript

For js and ts files, we need to have a jsconfig.json file in order to the project be able to know how to auto-import from other files: https://code.visualstudio.com/docs/languages/jsconfig
Also, the eslint_d and prettierd need to be globally installed and should be configured with it's own config files in order to use them.

Also, the typescript plugin used needs `tsserver` which `mason` in not able to capture.
Ensure you install the tsserver manually `npm install -g typescript` or via official typescript webpage.

## Java

We need to download jdtls in order for it to work.

First of all, we need to download a milestone build from the github and we can save it whenever we want. In my case, I've just saved in /Library/Java directory.

Then, we need to update our .zshenv file in order to have all of the java related stuff in our path.

Last, we need to update the ftplugin java.lua file with the correct paths and that's it. It should then work in a java file, out of the box

<!-- ## Lua -->
<!---->
<!-- In order for lua code formatter to work, we need to install a lua formatter, for that we can use the following command: -->
<!---->
<!-- ```zsh -->
<!-- yarn global add lua-fmt -->
<!-- ``` -->
<!---->
<!-- It's more as a workaround that could be a feature in the future to integrate it with the core nvim lsp but for now, formatter.nvim is the solution. -->

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

In order to use conda command, we need to perform the following command, after a
