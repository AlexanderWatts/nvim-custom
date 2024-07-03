-- https://github.com/neovim/nvim-lspconfig

return {
	"neovim/nvim-lspconfig",
	config = function()
		local lspconfig = require("lspconfig")
		local capabilities = require('cmp_nvim_lsp').default_capabilities()

		lspconfig.lua_ls.setup({
			capabilities = capabilities,
			diagnostics = {
				globals = {
					"vim",
				},
			},
		})

		lspconfig.html.setup({
			capabilities = capabilities,
		})

		lspconfig.rust_analyzer.setup({
			capabilities = capabilities,
		})
	end,
}
