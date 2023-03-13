-- ██████╗░██╗████████╗██╗███╗░░██╗██████╗░██╗░░░██╗████████╗███████╗
-- ██╔══██╗██║╚══██╔══╝██║████╗░██║██╔══██╗╚██╗░██╔╝╚══██╔══╝██╔════╝
-- ██████╦╝██║░░░██║░░░██║██╔██╗██║██████╦╝░╚████╔╝░░░░██║░░░█████╗░░
-- ██╔══██╗██║░░░██║░░░██║██║╚████║██╔══██╗░░╚██╔╝░░░░░██║░░░██╔══╝░░
-- ██████╦╝██║░░░██║░░░██║██║░╚███║██████╦╝░░░██║░░░░░░██║░░░███████╗
-- ╚═════╝░╚═╝░░░╚═╝░░░╚═╝╚═╝░░╚══╝╚═════╝░░░░╚═╝░░░░░░╚═╝░░░╚══════╝
-- Init.lua
-- Author: Dev Jay (jopecodes.dev)
-- Remap Leader Key
vim.g.mapleader = " "
--require("impatient")

-- -- Require my modules
require("plugins") -- lazy plugins manager
require("core") -- core functionality such as (LSP, CMP and so on)
require("modules") -- util plugins
require("themes") -- colorscheme
