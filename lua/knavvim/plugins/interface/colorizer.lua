return {
    "norcalli/nvim-colorizer.lua",
    name = "interface--colorizer",
    event = "VeryLazy",
    config = function()
        local colorize = require("colorizer") 
        colorize.setup({})
    end,
}
