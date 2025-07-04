-- ~/nvim/lua/gillancodes/maps.lua

vim.g.mapleader = " "

local function map(mode, lhs, rhs)
	vim.keymap.set(mode, lhs, rhs, { silent = true })
end

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

map("n", "f", "<cmd>Telescope find_files<cr>")
map("n", "<leader>f", "<cmd>Telescope live_grep<cr>")

-- map("n", "=", "<cmd>vertical resize +5<cr>")
-- map("n", ")", "<cmd>vertical resize -5<cr>")
-- map("n", "$", "<cmd>horizontal resize +5<cr>")
-- map("n", "^", "<cmd>horizontal resize -5<cr>")

-- Buffers
map("n", "<leader>bd", "<CMD>bd!<CR>")
map("n", "<leader>bn", "<CMD>enew<CR>")
map("n", "<leader>bq", "<CMD>write|bdelete<CR>")
map("n", "<Tab>", "<CMD>bnext<CR>")
map("n", "<S-Tab>", "<CMD>bnext<CR>")

-- Split
map("n", "<leader>sv", "<CMD>vnew<CR>")
map("n", "<leader>sh", "<CMD>new<CR>")

-- Explorer (MOved to Yazi)
-- map("n", "<leader>e", "<CMD>Explore<CR>")

-- Save
map("n", "<leader>w", "<CMD>update<CR>")

-- Quit
map("n", "<leader>q", "<CMD>q<CR>")

-- Exit insert mode
map("i", "jk", "<ESC>")

-- NeoTree
-- map("n", "<leader>e", "<CMD>Neotree focus<CR>")
-- map("n", "<C-n>", "<CMD>Neotree toggle<CR>")

-- New Windows
map("n", "<leader>o", "<CMD>vsplit<CR>")
map("n", "<leader>p", "<CMD>split<CR>")

-- Window Navigation
map("n", "<C-h>", "<C-w>h")
map("n", "<C-l>", "<C-w>l")
map("n", "<C-k>", "<C-w>k")
map("n", "<C-j>", "<C-w>j")

-- Move cursor while in insert mode
map("i", "<C-b>", "<ESC>^i", { desc = "move beginning of line" })
map("i", "<C-e>", "<End>", { desc = "move end of line" })
map("i", "<C-h>", "<Left>", { desc = "move left" })
map("i", "<C-l>", "<Right>", { desc = "move right" })
map("i", "<C-j>", "<Down>", { desc = "move down" })
map("i", "<C-k>", "<Up>", { desc = "move up" })

-- LSP

-- Show diagnostic in a floating window
vim.keymap.set('n', '<leader>se', vim.diagnostic.open_float, {noremap=true, silent=true})

-- Nonels
map("n", "<leader>fm", vim.lsp.buf.format, {})
