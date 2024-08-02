return {
    "akinsho/bufferline.nvim",
    name = "interface--bufferline",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    version = "*",
    opts = { -- require(bufferline).setup(opts)
        options = {
            always_show_bufferline = false,
            offsets = {
                {
                    filetype = "NvimTree",
                    text = "File Explorer",
                    text_align = "center",
                    separator = true,
                },
                {
                    filetype = "neo-tree",
                    text = "File Explorer",
                    text_align = "center",
                    separator = true,
                },
            },
        },
    },
    keys = {
        { "<M-b>", "<cmd>BufferLinePick<CR>", desc = "Bufferline Pick Buffer" },
        { "<M-c>", "<cmd>BufferLinePickClose<CR>", desc = "Bufferline Close Buffer" },
        { "go", "<cmd>BufferLineCycleNext<CR>", desc = "Next Buffer" },
        { "gi", "<cmd>BufferLineCyclePrev<CR>", desc = "Prev Buffer" },
    },
}
