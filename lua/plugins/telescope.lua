-- https://github.com/nvim-telescope/telescope.nvim

return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.8",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"debugloop/telescope-undo.nvim",
		-- "folke/trouble.nvim",
	},
	config = function()
		local builtin = require("telescope.builtin")
		require("telescope").load_extension("undo")
		-- require("telescope").load_extension("trouble")

		vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
		vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
		vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
		vim.keymap.set("n", "<leader>fv", builtin.git_files, {})
		vim.keymap.set("n", "<leader>fh", builtin.help_tags, {})

		vim.keymap.set("n", "<leader>fr", builtin.lsp_references, {})
		vim.keymap.set("n", "<leader>fd", builtin.diagnostics, {})
		vim.keymap.set("n", "<leader>fs", builtin.lsp_workspace_symbols, {})

		vim.keymap.set("n", "<leader>u", "<cmd>Telescope undo<cr>")
	end,
}
