-- set leader key for keymaps, and way to escape
vim.g.mapleader=" "
local keymap = vim.keymap

--
-- page scrolling shortcuts
--
keymap.set("n", "gh", "H")
keymap.set("n", "gl", "L")
keymap.set("n", "H", "<C-u>")
keymap.set("n", "L", "<C-d>")

-- 
-- buffer shortcuts
--
keymap.set("n", "<leader>bd", "<cmd>bd<CR>", { desc = "Close Buffer" })

--
-- tab shortcuts
--
keymap.set("n", "<leader>tn", "<cmd>tabnext<CR>", { desc = "Cycle Next Tab" })
keymap.set("n", "<leader>tp", "<cmd>tabprevious<CR>", { desc = "Cycle Prev Tab" })
keymap.set("n", "<leader>tc", "<cmd>tabclose<CR>", { desc = "Close Current Tab" })
keymap.set("n", "<leader>tt", "<cmd>tabnew<CR>", { desc = "Create New Tab" })

--
-- split management
--
keymap.set("n", "<leader>w", "<C-w>w", { desc="Switch to other window" })
keymap.set("n", "<C-j>", "<C-w>j")
keymap.set("n", "<C-k>", "<C-w>k")
keymap.set("n", "<C-h>", "<C-w>h")
keymap.set("n", "<C-l>", "<C-w>l")
keymap.set("n", "<M-h>", ":vertical resize -1<CR>")
keymap.set("n", "<M-l>", ":vertical resize +1<CR>")
keymap.set("n", "<M-j>", ":resize +1<CR>")
keymap.set("n", "<M-k>", ":resize -1<CR>")
--keymap.set("n", "<C-h>", ":resize -1<CR>")
--keymap.set("n", "<C-l>", ":resize +1<CR>")
--keymap.set("v", "<C-h>", ":<BS><BS><BS><BS><BS>vertical resize -1<CR>v") -- make what split resized be mode determined 
--keymap.set("v", "<C-l>", ":<BS><BS><BS><BS><BS>vertical resize +1<CR>v") -- (just a little trick), think v is vertical

--
-- line movements
--
--keymap.set("n", "<C-j>", "ddp") -- single lines in normal mode
--keymap.set("n", "<C-k>", "ddkP") -- single lines in normal mode
keymap.set("v", "<C-j>", "xp`[V`]0")     -- multiple lines in visual mode
keymap.set("v", "<C-k>", "xkP`[V`]0")      -- multiple lines in visual mode

--
-- marks management
--
keymap.set("n", "<leader>md", "<cmd>:delmarks A-Z<CR>")
keymap.set("n", "'", "`")

-- 
-- Windows Specific Keymaps
--
keymap.set("n", "<leader>,,", "<cmd>cd C:/Users/josinski/AppData/Local/nvim<CR>")
keymap.set("n", "<leader>,w", "<cmd>cd C:/Users/josinski/AppData/Roaming/Documents/EmployeeHealthWellbeing<CR>")
