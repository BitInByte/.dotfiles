-- ██████╗░██╗████████╗██╗███╗░░██╗██████╗░██╗░░░██╗████████╗███████╗
-- ██╔══██╗██║╚══██╔══╝██║████╗░██║██╔══██╗╚██╗░██╔╝╚══██╔══╝██╔════╝
-- ██████╦╝██║░░░██║░░░██║██╔██╗██║██████╦╝░╚████╔╝░░░░██║░░░█████╗░░
-- ██╔══██╗██║░░░██║░░░██║██║╚████║██╔══██╗░░╚██╔╝░░░░░██║░░░██╔══╝░░
-- ██████╦╝██║░░░██║░░░██║██║░╚███║██████╦╝░░░██║░░░░░░██║░░░███████╗
-- ╚═════╝░╚═╝░░░╚═╝░░░╚═╝╚═╝░░╚══╝╚═════╝░░░░╚═╝░░░░░░╚═╝░░░╚══════╝
-- Init.lua
-- Author: BitInByte (jopecodes.dev)
-- Remap Leader Key
vim.g.mapleader = " "
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- Configs
require("plugins")

-- LSP
require("cfg-cmp")
require("cfg-lsp")

-- TreeSitter
require("cfg-treesitter")

-- Sources & Plugins Options
require("modules")

-- Themes Supported Configuration
require("themes")
