-- https://github.com/stevearc/conform.nvim

return {
	"stevearc/conform.nvim",
	event = {
		"BufReadPre",
		"BufNewFile",
	},
	opts = {},
	config = function()
		require("conform").setup({
			formatters_by_ft = {
				lua = { "stylua" },
			},
			format_on_save = {
				enabled = true,
				timeout_ms = 500,
				-- lsp_format = "fallback",
				async = false,
			},
		})

		vim.keymap.set({ "n", "v" }, "<leader>mp", function()
			require("conform").format({
				timeout_ms = 500,
				lsp_format = "fallback",
				async = false,
			})
		end)
	end,
}
