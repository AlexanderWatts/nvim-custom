-- https://github.com/nvim-treesitter/nvim-treesitter

return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		require("nvim-treesitter.configs").setup({
			ensure_installed = {
				"java",
				"rust",
				"lua",
			},
			highlight = { enable = true },
			indent = { enable = true },
		})
	end
}
