return {
    {
        "nvim-treesitter/nvim-treesitter",
        branch = "master", -- Tells Lazy to fetch the legacy configuration branch
        build = ":TSUpdate",
        dependencies = {
            "nvim-treesitter/nvim-treesitter-textobjects",
        },
        config = function()
            -- This module exists on the master branch, so it will load safely
            local configs = require("nvim-treesitter.configs")
            ---@diagnostic disable-next-line: missing-fields
            configs.setup({
                textobjects = {
                    select = {
                        enable = true,
                        lookahead = true,
                        keymaps = {
                            ["af"] = "@function.outer",
                            ["if"] = "@function.inner",
                        },
                    },
                },
                highlight = { enable = true },
                indent = { enable = true },
                autotag = { enable = true },
                ensure_installed = {
                    "json", "python", "javascript", "query", "typescript",
                    "tsx", "php", "yaml", "html", "css", "markdown",
                    "markdown_inline", "bash", "lua", "vim", "vimdoc",
                    "c", "dockerfile", "gitignore", "astro",
                },
                auto_install = false,
            })
        end
    }
}
