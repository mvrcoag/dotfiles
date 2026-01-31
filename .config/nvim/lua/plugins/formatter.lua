return {
	"mhartington/formatter.nvim",
	config = function()
		require("formatter").setup({
			filetype = {
				lua = require("formatter.filetypes.lua").stylua,
				javascript = require("formatter.filetypes.javascript").prettier,
				typescript = require("formatter.filetypes.javascript").prettier,
				typescriptreact = require("formatter.filetypes.javascript").prettier,
				javascriptreact = require("formatter.filetypes.javascript").prettier,
			},
		})
	end,
}
