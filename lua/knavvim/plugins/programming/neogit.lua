return {
    "NeogitOrg/neogit",
    name = "programming--neogit",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "sindrets/diffview.nvim",
        "searching--telescope",
    },
    keys = {
        { "<leader>pg", "<cmd>Neogit<CR>", desc = "Neogit Status" },
    },
    config = true,
}
