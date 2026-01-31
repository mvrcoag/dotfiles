local telescope = require("telescope.builtin")

local map = vim.keymap.set
local opts = { noremap = true, silent = true }

local notes_path = "~/Library/Mobile Documents/iCloud~md~obsidian/Documents/Vault/"

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

map("n", "K", vim.lsp.buf.hover)
map("n", "<leader>D", vim.diagnostic.open_float)
map("n", "]d", vim.diagnostic.goto_next)
map("n", "[d", vim.diagnostic.goto_prev)
map("n", "gr", vim.lsp.buf.references)
map("n", "rn", vim.lsp.buf.rename)
map("n", "gi", vim.lsp.buf.implementation)
map("n", "gs", vim.lsp.buf.signature_help)

map("n", "1", "$", opts)
