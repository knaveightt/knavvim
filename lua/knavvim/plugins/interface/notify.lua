return {
    "rcarriga/nvim-notify",
    name = "interface--notify",
    dependencies = {
        "searching--telescope"
    },
    config = function(_, opts)
        vim.notify = require("notify")
        vim.notify.setup({
            minimum_width = 20,
        })

        require("telescope").setup(opts)
        require("telescope").load_extension("notify")

        local keymap = vim.keymap
        keymap.set("n", "<leader>!", "<cmd>Telescope notify<CR>", { desc="Notifications" })
    end,
}
