return {
	"mfussenegger/nvim-lint",
	config = function()
		lint = require("lint")
		lint.linters_by_ft = {
			["*.ts"] = "eslint_d",
			["*.tsx"] = "eslint_d",
			["*.js"] = "eslint_d",
			["*.jsx"] = "eslint_d",
		}
	end
}
