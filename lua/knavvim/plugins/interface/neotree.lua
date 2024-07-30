return {
    "nvim-neo-tree/neo-tree.nvim",
    name = "interface--neotree",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons",
        "MunifTanjim/nui.nvim",
    },
    keys = {
        { "<leader>ft", "<cmd>Neotree<CR>", desc="Open File Tree" }
    },
}
