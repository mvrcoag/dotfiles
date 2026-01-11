local opts = {
	ensure_installed = {
		"javascript",
        "typescript",
        "markdown",
        "markdown_inline",
        "html",
        "python",
        "go"
	}
}

local function config()
	require("nvim-treesitter.configs").setup(opts)
end

return {
	"nvim-treesitter/nvim-treesitter",
	config = config,
	build = ":TSUpdate"
}
