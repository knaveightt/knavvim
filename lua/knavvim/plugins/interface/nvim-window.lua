return {
    "yorickpeterse/nvim-window",
    name = "interface--nvim-window",
    keys = {
        { "<M-w>", "<cmd>lua require('nvim-window').pick()<CR>", desc="Nvim-Window Picker" },
    },
    config = true,
}
