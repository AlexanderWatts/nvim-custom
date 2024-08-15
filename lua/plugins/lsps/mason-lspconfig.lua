-- https://github.com/williamboman/mason-lspconfig.nvim

return {
	"williamboman/mason-lspconfig.nvim",
	config = function()
		require("mason-lspconfig").setup({
			ensure_installed = {
				"lua_ls",
				"clangd",
				"rust_analyzer",
				"html",
				"tsserver",
			},
		})
	end,
}
