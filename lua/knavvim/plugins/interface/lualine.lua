return {
    "nvim-lualine/lualine.nvim",
    name = "interface--lualine",
    dependencies = {
        "nvim-tree/nvim-web-devicons"
    },
    config = function()
        local lualine = require("lualine")

        lualine.setup({
            options = {
                disabled_filetypes = {
                    'NvimTree',
                },
                theme = "onenord",
            },
        })
    end
}
