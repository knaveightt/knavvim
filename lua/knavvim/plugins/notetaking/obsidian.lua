return {
    "epwalsh/obsidian.nvim",
    -- name = "notetaking--obsidian", 24 July 2024 for some reason does not work
    version = "*",
    lazy = true,
    event = {
        "BufReadPre " .. vim.fn.expand "~" .. "/AppData/Roaming/Documents/EmployeeHealthWellbeing/**.md",
        "BufNewFile " .. vim.fn.expand "~" .. "/AppData/Roaming/Documents/EmployeeHealthWellbeing/**.md",
    },
    -- ft = "markdown",
    dependencies = {
        "nvim-lua/plenary.nvim",
    },
    opts = {
        workspaces = {
            {
                name = "EmployeeHealthWellbeing",
                path = "~/AppData/Roaming/Documents/EmployeeHealthWellbeing"
            },
        },

        daily_notes = {
            folder = "dailies",
            date_format = "%Y%m%d",
            alias_format = "%B %d, %Y",
        },

        completion = {
            nvim_cmp = true,
            min_chars = 2,
        },

        mappings = {
            -- toggle check boxes
            ["<leader>oc"] = {
                action = function()
                    return require("obsidian").util.toggle_checkbox()
                end,
                opts = { buffer = true },
            },
        },

        new_notes_location = "current_dir",
        preferred_link_style = "markdown",

        -- Optional, customize how note IDs are generated given an optional title.
        ---@param title string|?
        ---@return string
        note_id_func = function(title)
            -- Create note IDs in a Zettelkasten format with a timestamp and a suffix.
            -- In this case a note with the title 'My new note' will be given an ID that looks
            -- like '1657296016-my-new-note', and therefore the file name '1657296016-my-new-note.md'
            local suffix = ""
            if title ~= nil then
                -- If title is given, transform it into valid file name.
                suffix = title:gsub(" ", "-"):gsub("[^A-Za-z0-9-]", ""):lower()
            else
                -- If title is nil, just add 4 random uppercase letters to the suffix.
                for _ = 1, 4 do
                    suffix = suffix .. string.char(math.random(65, 90))
                end
            end
            return tostring(os.date("%Y%m%d%H%M")) .. "-" .. suffix
        end,

        templates = {
            folder = "templates",
            date_format = "%Y-%m-%d",
            time_format = "%H:%M",
            -- A map for custom variables, the key should be the variable and the value a function
            substitutions = {},
        },

    },
    keys = {
        {"<leader>os", "<cmd>ObsidianSearch<CR>", desc = "Search Notes" },
        {"<leader>ot", "<cmd>ObsidianTags<CR>", desc = "Search by Tag" },
        {"<leader>oi", "<cmd>ObsidianTemplate<CR>", desc = "Insert Template" },
        {"<leader>on", "<cmd>ObsidianNew<CR>", desc = "New Note" },
        {"<leader>od", "<cmd>ObsidianToday<CR>", desc = "Open Daily Note" },
        {"<leader>oo", "<cmd>ObsidianQuickSwitch<CR>", desc = "Open Note by Name" },
        {"<leader>ow", "<cmd>ObsidianWorkspace<CR>", desc = "Switch Workspace" },
    },
}
