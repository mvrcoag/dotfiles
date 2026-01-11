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
				html = require("formatter.filetypes.html").prettier,
				python = require("formatter.filetypes.python").black,
				go = require("formatter.filetypes.go").gofmt,
			},
		})
	end,
}
