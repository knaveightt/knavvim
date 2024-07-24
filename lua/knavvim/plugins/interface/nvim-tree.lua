return {
    "nvim-tree/nvim-tree.lua",
    name = "interface--nvim-tree",
    dependencies = {
        "nvim-tree/nvim-web-devicons"
    },
    config = function()
        local nvimtree = require("nvim-tree")

        -- recommended settings from nvim-tree documentation
        vim.g.loaded_netrw = 1        --disable netrw
        vim.g.loaded_netrwPlugin = 1  --disable netrw
        vim.opt.termguicolors = true

        -- all defaults for nvimtree
        nvimtree.setup({
            -- change folder arrow icons
            renderer = {
                indent_markers = {
                    enable = true,
                },
                icons = {
                    glyphs = {
                        folder = {
                            arrow_closed = "", -- arrow when folder is closed
                            arrow_open = "", -- arrow when folder is open
                        },
                    },
                },
            },
        })

        -- set keymaps here
        local keymap = vim.keymap -- get the current vim keymaps
        keymap.set("n", "<leader>ft", "<cmd>NvimTreeToggle<CR>", {desc="Toggle Tree Explorer"}) -- toggle tree explorer
        keymap.set("n", "<leader>fT", "<cmd>NvimTreeFindFileToggle<CR>", {desc="Find File in Tree"}) -- toggle tree at file loc
    end,
}
