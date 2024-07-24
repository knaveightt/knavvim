
return {
    "rmehri01/onenord.nvim",
    name = "interface--onenord",
    lazy = false,
    priority = 1000, -- load before all others
    config = function()
        local onenord = require("onenord")

        onenord.setup({
        })

        -- loading colorscheme here
        vim.cmd([[colorscheme onenord]])
    end,
}
