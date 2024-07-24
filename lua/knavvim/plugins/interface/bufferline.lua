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
                }
            },
        },
    },
    keys = {
        { "<leader>bb", "<cmd>BufferLinePick<CR>", desc = "Bufferline Pick Buffer" },
        { "<leader>bc", "<cmd>BufferLinePickClose<CR>", desc = "Bufferline Close Buffer" },
        { "<leader>bn", "<cmd>bnext<CR>", desc = "Next Buffer" },
        { "<leader>bp", "<cmd>bprevious<CR>", desc = "Prev Buffer" },
        { "go", "<cmd>bnext<CR>", desc = "Next Buffer" },
        { "gi", "<cmd>bprevious<CR>", desc = "Prev Buffer" },
    },
}
