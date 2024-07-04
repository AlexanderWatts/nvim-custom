local yank_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })

-- Highlight on yank
vim.api.nvim_create_autocmd('TextYankPost', {
	group = yank_group,
	pattern = '*',
	callback = function()
		vim.highlight.on_yank({
			higroup = 'IncSearch', -- You can change this to any highlight group you prefer
			timeout = 200,      -- Duration of the highlight in milliseconds
		})
	end,
})
