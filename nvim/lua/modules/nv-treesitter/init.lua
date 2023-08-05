return {
    {
        "nvim-treesitter/nvim-treesitter",
        dependencies = {
            "nvim-treesitter/nvim-tree-docs",
        },
        build = ":TSUpdate",
        config = function()
            require("core.treesitter") -- colorscheme util
        end,
    },
}
