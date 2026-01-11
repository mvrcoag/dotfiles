return {
	{
		"williamboman/mason.nvim",
		opts = {},
	},
	{
		"williamboman/mason-lspconfig.nvim",
		opts = {
			ensure_installed = {
				"vtsls",
				"lua_ls",
				"gopls",
				"pyright",
			},
		},
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local lspconfig = require("lspconfig")

			local on_attach = function(_, bufnr)
				local map = function(mode, lhs, rhs)
					vim.keymap.set(mode, lhs, rhs, { buffer = bufnr })
				end

				map("n", "K", vim.lsp.buf.hover)
				map("n", "<leader>D", vim.diagnostic.open_float)
				map("n", "]d", vim.diagnostic.goto_next)
				map("n", "[d", vim.diagnostic.goto_prev)
				map("n", "gr", vim.lsp.buf.references)
				map("n", "rn", vim.lsp.buf.rename)
				map("n", "gi", vim.lsp.buf.implementation)
				map("n", "gs", vim.lsp.buf.signature_help)
			end

			for _, server in pairs({ "vtsls", "lua_ls", "gopls", "pyright" }) do
				lspconfig[server].setup({
					on_attach = on_attach,
				})
			end
		end,
	},
}
