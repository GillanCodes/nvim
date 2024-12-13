require "nvchad.mappings"

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

map("n", "f", "<cmd>Telescope find_files<cr>")

map("n", "<C-t>", function()
  require("nvchad.themes").open()
end, {})

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
--
--
