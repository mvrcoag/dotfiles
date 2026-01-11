local telescope = require("telescope.builtin")

local map = vim.keymap.set
local opts = { noremap = true, silent = true }

local notes_path = "~/Documents/Notes"

map("i", "jk", "<Esc>")
map("n", "<leader>ff", telescope.find_files, { desc = "Telescope find files" })
map("n", "<leader>fg", telescope.live_grep, { desc = "Telescope live grep" })

map("n", "<C-h>", "<C-w>h", opts)
map("n", "<C-l>", "<C-w>l", opts)
map("n", "<C-j>", "<C-w>j", opts)
map("n", "<C-k>", "<C-w>k", opts)

map("n", "<leader>sv", ":vsplit<CR>", opts)
map("n", "<leader>sh", ":split<CR>", opts)

map("t", "<Esc>", "<C-\\><C-n>")

map("n", "<leader>n", ":Ex " .. notes_path .. "<CR>", opts)
map("n", "<leader>e", ":Ex<CR>", opts)
