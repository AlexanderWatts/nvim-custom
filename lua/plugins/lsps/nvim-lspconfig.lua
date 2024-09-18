-- https://github.com/neovim/nvim-lspconfig

return {
	"neovim/nvim-lspconfig",
	event = { "BufReadPre", "BufNewFile", },
	config = function()
		local lspconfig = require("lspconfig")

		-- Autocomplete
		local capabilities = require("cmp_nvim_lsp").default_capabilities()

		lspconfig.lua_ls.setup({
			capabilities = capabilities,
			diagnostics = {
				globals = {
					"vim",
				},
			},
		})
		lspconfig.ts_ls.setup({
			capabilities = capabilities,
		})

		lspconfig.html.setup({
			capabilities = capabilities,
		})

		lspconfig.clangd.setup({
			capabilities = capabilities,
		})

		lspconfig.rust_analyzer.setup({
			capabilities = capabilities,
		})
	end,
}
