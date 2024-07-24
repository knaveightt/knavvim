return {
    "yorickpeterse/nvim-window",
    name = "interface--nvim-window",
    keys = {
        { "<C-w>w", "<cmd>lua require('nvim-window').pick()<CR>", desc="Nvim-Window Picker" },
    },
    config = true,
}
