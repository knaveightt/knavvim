return {
    "hrsh7th/nvim-cmp",
    name = "programming--completions",
    event = "InsertEnter",
    dependencies = {
        "hrsh7th/cmp-buffer", -- completion source for text in buffer
        "hrsh7th/cmp-path",   -- completion source for file sys paths
        "L3MON4D3/LuaSnip",   -- snippet engine
        "saadparwaiz1/cmp_luasnip" -- completion source for snippets
    },
    config = function()
        local cmp = require("cmp")
        local luasnip = require("luasnip")

        -- here's a way to load vscode stype snippets I may get from plugins
        -- e.g. freindly-snippets
        -- require("luasnip.loaders.from_vscode").lazy_load()

        cmp.setup({
            competion = {
                completeopt = "menu,menuone,preview,noselect",
            },
            snippet = { -- configure nvim-cmp interaction with snippet engine
                expand = function(args)
                    luasnip.lsp_expand(args.body)
                end,
            },
            mapping = cmp.mapping.preset.insert({
                ["<C-k>"] = cmp.mapping.select_prev_item(), -- previous suggestion
                ["<C-j>"] = cmp.mapping.select_next_item(), -- next suggestion
                ["<C-b>"] = cmp.mapping.scroll_docs(-4),
                ["<C-f>"] = cmp.mapping.scroll_docs(4),
                ["<C-Space>"] = cmp.mapping.complete(), -- show completion suggestions
                ["<C-e>"] = cmp.mapping.abort(), -- close completion window
                ["<CR>"] = cmp.mapping.confirm({ select = false }),
            }),
            -- sources for autocompletion
            sources = cmp.config.sources({
                { name = "luasnip" }, -- snippets
                { name = "buffer" }, -- text within current buffer
                { name = "path" }, -- file system paths
            }),
        })
    end,
}
