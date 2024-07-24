return {
    "ghassan0/telescope-glyph.nvim",
    name = "searching--telescope-glyph",
    dependencies = {
        "searching--telescope"
    },
    keys = {
        { "<leader>sg", "<cmd>Telescope glyph<CR>", desc="Search Unicode Character" }
    },
    config = function(_, opts)
        -- Calling telescope's setup from multiple specs does not hurt, it will happily merge the
        -- configs for us. We won't use data, as everything is in it's own namespace (telescope
        -- defaults, as well as each extension).
        require("telescope").setup(opts)
        require("telescope").load_extension("glyph")
    end,
}
