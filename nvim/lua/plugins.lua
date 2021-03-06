-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require("packer").startup(
  function(use)
    -- Packer can manage itself
    use "wbthomason/packer.nvim"
    -- My plugins here

    -- LSP
    use "neovim/nvim-lspconfig"
    use "mfussenegger/nvim-jdtls" -- java
    -- use "OmniSharp/omnisharp-vim"
    use "lervag/vimtex" -- vimtex
    use(
      {
        "glepnir/lspsaga.nvim",
        branch = "main"
        -- config = function()
        --   local saga = require("lspsaga")
        --
        --   saga.init_lsp_saga({})
        -- end
      }
    ) -- popup
    use "ray-x/lsp_signature.nvim" -- show args info
    -- use 'github/copilot.vim'
    use {
      "jose-elias-alvarez/null-ls.nvim",
      requires = {{"nvim-lua/plenary.nvim"}}
    }

    -- CMP
    use "hrsh7th/cmp-nvim-lsp"
    use "hrsh7th/cmp-buffer"
    use "hrsh7th/cmp-path"
    use "hrsh7th/cmp-cmdline"
    use "hrsh7th/nvim-cmp"
    use "hrsh7th/cmp-calc"
    use "hrsh7th/cmp-nvim-lua" -- neovim lua autocompletion
    -- use 'hrsh7th/cmp-cmdline'
    use "f3fora/cmp-spell"
    use {"tzachar/cmp-tabnine", run = "./install.sh", requires = "hrsh7th/nvim-cmp"}
    use "onsails/lspkind-nvim"

    -- Until there is not support for all formatters on nvim lsp
    use "mhartington/formatter.nvim"

    -- Snippets stuff
    use "L3MON4D3/LuaSnip"
    use "saadparwaiz1/cmp_luasnip"
    use "rafamadriz/friendly-snippets"
    -- use "SirVer/ultisnips"
    -- use "quangnguyen30192/cmp-nvim-ultisnips"

    -- File Explorer
    use {
      "kyazdani42/nvim-tree.lua",
      requires = "kyazdani42/nvim-web-devicons"
      -- config = function()
      --   require "nvim-tree".setup {}
      -- end
    }

    -- ColorSchemes
    use "yashguptaz/calvera-dark.nvim"
    use "shaunsingh/moonlight.nvim"
    use(
      {
        "rose-pine/neovim",
        as = "rose-pine"
        -- config = function()
        --   -- Options (see available options below)
        -- vim.g.rose_pine_variant = "base"
        --
        --   -- Load colorscheme after options
        -- vim.cmd("colorscheme rose-pine")
        -- end
      }
    )
    use "folke/tokyonight.nvim"
    -- use "kaicataldo/material.vim"
    use "marko-cerovac/material.nvim"

    -- Telescope
    use {
      "nvim-telescope/telescope.nvim",
      requires = {{"nvim-lua/plenary.nvim"}}
    }

    -- Convert hash to colors
    use "norcalli/nvim-colorizer.lua"

    -- TreeSitter
    use {
      "nvim-treesitter/nvim-treesitter",
      run = ":TSUpdate"
    }

    -- Buffer Line
    use {"akinsho/bufferline.nvim", requires = "kyazdani42/nvim-web-devicons"}

    -- Status Line
    use {
      "nvim-lualine/lualine.nvim",
      requires = {"kyazdani42/nvim-web-devicons", opt = true}
    }

    -- Comment Utility
    use {
      "numToStr/Comment.nvim"
      -- config = function()
      --   require("Comment").setup()
      -- end
    }

    -- Auto Close Tag
    use "windwp/nvim-autopairs"
    use "windwp/nvim-ts-autotag"

    -- Info on the cursor location
    use {
      "SmiteshP/nvim-gps",
      requires = "nvim-treesitter/nvim-treesitter"
    }

    -- Indentation lines
    use "lukas-reineke/indent-blankline.nvim"

    -- Git Utilities
    use {
      "lewis6991/gitsigns.nvim"
      -- config = function()
      --   require("gitsigns").setup()
      -- end
    }
    use {"TimUntersberger/neogit", requires = "nvim-lua/plenary.nvim"}

    -- Scrollbar
    use("petertriho/nvim-scrollbar")

    -- Folding utility
    use {
      "anuvyklack/pretty-fold.nvim"
      -- config = function()
      --   require("pretty-fold").setup()
      -- end
    }
    use {
      "anuvyklack/fold-preview.nvim",
      requires = "anuvyklack/keymap-amend.nvim"
      -- config = function()
      --   require("fold-preview").setup()
      -- end
    }
    -- Symbols and tags outline window tree
    use("simrat39/symbols-outline.nvim")

    -- ToDo comment highlight
    -- TODO: Test
    use {
      "folke/todo-comments.nvim",
      requires = "nvim-lua/plenary.nvim"
      -- config = function()
      --   require("todo-comments").setup {}
      -- end
    }

    -- Angular Toggle
    use {
      "BitInByte/angtoggle-nvim"
      -- branch = "development-v0"
    }

    -- Chars on the end of the line
    use("tjdevries/cyclist.vim")
  end
)
