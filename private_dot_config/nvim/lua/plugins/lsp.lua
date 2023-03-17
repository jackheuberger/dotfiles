-- stylua: ignore
return {
    -- tresitter required plugins
    {
        "nvim-treesitter/nvim-treesitter",
        opts = {
            ensure_installed = {
                "bash",
                "help",
                "html",
                "javascript",
                "json",
                "lua",
                "markdown",
                "markdown_inline",
                "python",
                "query",
                "regex",
                "tsx",
                "typescript",
                "vim",
                "yaml",
            },
        },
    },

    {
        "neovim/nvim-lspconfig",
        ---@class PluginLspOpts
        opts = {
            ---@type lspconfig.options
            servers = {
                -- pyright will be automatically installed with mason and loaded with lspconfig
                pyright = {},
                clangd = {},
            },
            setup = {},
        },
    },

    {
        "github/copilot.vim",
    },
}
