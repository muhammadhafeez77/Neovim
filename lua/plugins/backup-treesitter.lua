return {
    {
        "nvim-treesitter/nvim-treesitter",
        -- Force Lazy to pull the old branch before the breaking change
        branch = "master", 
        build = ":TSUpdate",
        dependencies = {
            "nvim-treesitter/nvim-treesitter-textobjects",
        },
        config = function()
            -- Your original code with your fixed typo will work here:
            local configs = require("nvim-treesitter.configs")
            configs.setup({
                -- Your existing highlight, ensure_installed, and textobjects setup blocks
                highlight = { enable = true },
                indent = { enable = true },
                ensure_installed = { "lua", "vim", "vimdoc", "markdown" --[[ add your others ]] },
            })
        end
    }
}
