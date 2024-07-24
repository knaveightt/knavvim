return {
    "debugloop/telescope-undo.nvim",
    name = "searching--telescope-undo",
    dependencies = {
        "searching--telescope"
    },
    keys = {
        { "<leader>su", "<cmd>Telescope undo<CR>", desc="Search Undo Tree" }
    },
    config = function(_, opts)
        -- Calling telescope's setup from multiple specs does not hurt, it will happily merge the
        -- configs for us. We won't use data, as everything is in it's own namespace (telescope
        -- defaults, as well as each extension).
        require("telescope").setup(opts)
        require("telescope").load_extension("undo")
    end,
}
