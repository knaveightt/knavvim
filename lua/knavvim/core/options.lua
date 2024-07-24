-- globals
vim.g.markdown_folding = 1 -- for markdown folding

-- set options
local options = {
    termguicolors = true,  -- plugins require this to allow correct colors
    expandtab = true,      -- convert tabs to spaces
    shiftwidth = 4,        -- autoindents will be 4 spaces 
    tabstop = 4,           -- make tabs 4 spaces long
    ignorecase = true,     -- ignore cases for searching
    hlsearch = true,       -- highlight matches when searching
    splitbelow = true,     -- force splits below
    splitright = true,     -- force v splits to the right
    number = true,         -- show line numbers
    relativenumber = true, -- show line numbers as relative
    numberwidth = 3,       -- width of line number column
    wrap = false,          -- show long lines without wrapping
    showmode = false,      -- dont show the -- Insert -- message
    conceallevel = 2,      -- set conceal level, primarily for markdown
    foldlevelstart = 99,   -- sets the starting state of folds as unfolded
}

for k, v in pairs(options) do
    vim.opt[k] = v
end
