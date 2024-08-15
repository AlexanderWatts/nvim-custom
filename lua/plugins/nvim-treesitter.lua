-- https://github.com/nvim-treesitter/nvim-treesitter

return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		require("nvim-treesitter.configs").setup({
			ensure_installed = {
				"lua",
				"vimdoc",
				"vim",
				"java",
				"rust",
				"c",
				"markdown",
				"markdown_inline",
				"typescript",
				"javascript",
			},
			highlight = { enable = true },
			indent = { enable = true },
		})
	end,
}
