return {
    "nvim-telescope/telescope.nvim", tag = "0.1.8",
    name = "searching--telescope",
    dependencies = {
        "nvim-lua/plenary.nvim"
    },
    config = function()
        -- configure telescope
        local telescope = require("telescope")
        local actions = require("telescope.actions")
        
        telescope.setup({
            defaults = {
                mappings = {
                    i = {
                        ["<C-k>"] = actions.move_selection_previous,
                        ["<C-j>"] = actions.move_selection_next,
                    }
                }
            }
        })

        -- keymaps
        local keymap = vim.keymap
        local builtin = require("telescope.builtin")
        
        keymap.set("n", "<leader>sf", builtin.find_files, { desc="Search for Files" })
        keymap.set("n", "<leader>sb", builtin.buffers, { desc="Search Buffers" })
        keymap.set("n", "<leader>sr", builtin.live_grep, { desc="Ripgrep in Directory" })
        keymap.set("n", "<leader>ss", builtin.current_buffer_fuzzy_find, { desc="Search in Buffer" })
    end,
}
