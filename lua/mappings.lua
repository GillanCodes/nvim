require "nvchad.mappings"

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

map("n", "f", "<cmd>Telescope find_files<cr>")
map("n", "fg", "<cmd>Telescope live_grep<cr>")

map("n" , "=", "<cmd>vertical resize +5<cr>")
map("n" , ")", "<cmd>vertical resize -5<cr>")
-- map("n" , "$", "<cmd>horizontal resize +5<cr>")
-- map("n" , "^", "<cmd>horizontal resize -5<cr>")

map("n", "<C-t>", function()
  require("nvchad.themes").open()
end, {})

map({ "n", "t" }, "<C-i>", function()
  require("nvchad.term").toggle { pos = "float", id = "floatTerm" }
end, { desc = "terminal toggle floating term" })

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
--
--
