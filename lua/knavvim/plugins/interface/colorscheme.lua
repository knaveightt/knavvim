return {
    "rebelot/kanagawa.nvim",
    name = "interface--kanagawa",
    lazy = false,
    priority = 1000, -- load before all others
    config = function()
        local kanagawa = require("kanagawa")

        kanagawa.setup({
        })

        -- loading colorscheme here
        vim.cmd([[colorscheme kanagawa-dragon]])
    end,
}
