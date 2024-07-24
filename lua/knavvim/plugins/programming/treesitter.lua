return {
    "nvim-treesitter/nvim-treesitter",
    name = "programming--treesitter",
    build = function()
        require("nvim-treesitter.install").update({ with_sync = true})()
    end,
    config = function()
        local treesitter = require("nvim-treesitter.configs")
        treesitter.setup({
            highlight = {
                enable = true,
            },
        })
    end,
}
