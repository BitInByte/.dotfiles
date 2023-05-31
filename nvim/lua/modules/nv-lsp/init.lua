return {

    {
        "neovim/nvim-lspconfig",
        dependencies = {
            { "jose-elias-alvarez/typescript.nvim" },
            { "lervag/vimtex" },
            { "akinsho/flutter-tools.nvim",        dependencies = { "nvim-lua/plenary.nvim" } },
        },
        -- config = function()
        -- 	-- require("core.lsp") -- lsp engine
        -- end,
    },

    {
        "williamboman/mason.nvim",
        dependencies = {
            "williamboman/mason-lspconfig.nvim",
            -- "jayp0521/mason-null-ls.nvim",
            "jayp0521/mason-nvim-dap.nvim",
        },
        build = ":MasonUpdate", -- :MasonUpdate updates registry contents
        config = function()
            -- Everything related to LSP need to have the following order
            -- Mason should be first and then lsp and lastly all of the others
            -- If we change this order, can lead to not expected behaviour
            require("core.mason") -- lsp management
            -- Lsp needs to be loaded after mason in order for
            -- automatic_installation to work
            require("core.lsp") -- lsp engine
            require("core.dap") -- debuggers management
            require("core.null-ls") -- formaters management
        end,
    },

    {
        -- "jay-babu/mason-null-ls.nvim",
        "jayp0521/mason-null-ls.nvim",
        event = { "BufReadPre", "BufNewFile" },
        dependencies = {
            "williamboman/mason.nvim",
            "jose-elias-alvarez/null-ls.nvim",
            -- "jose-elias-alvarez/null-ls.nvim",
            "nvim-lua/plenary.nvim",
        },
        -- config = function()
        -- require("your.null-ls.config") -- require your null-ls config here (example below)
        -- require("core.null-ls") -- formaters management
        -- end,
    },

    {
        "mfussenegger/nvim-dap",
        dependencies = {
            "rcarriga/nvim-dap-ui",
        },
    },

    -- LSP Sources && Modules
    {
        "hrsh7th/nvim-cmp",
        config = function()
            require("core.cmp") -- completion
        end,
        dependencies = {
            "hrsh7th/cmp-nvim-lsp",
            "hrsh7th/cmp-buffer",
            "hrsh7th/cmp-path",
            "hrsh7th/cmp-cmdline",
            "hrsh7th/cmp-calc",
            "hrsh7th/cmp-nvim-lua",
            "hrsh7th/cmp-nvim-lsp-signature-help",
            "onsails/lspkind-nvim",
        },
    },
    -- use({ "tzachar/cmp-tabnine", build = "./install.sh", dependencies = "hrsh7th/nvim-cmp" })
}
