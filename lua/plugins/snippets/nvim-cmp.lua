-- https://github.com/hrsh7th/nvim-cmp

return {
	"hrsh7th/nvim-cmp",
	event = "InsertEnter",
	config = function()
		local cmp = require 'cmp'

		require("luasnip.loaders.from_vscode").lazy_load()

		cmp.setup({
			matching = {
				disallow_fuzzy_matching = true,   -- Disable fuzzy matching
				disallow_partial_matching = true, -- Disable partial matching
				disallow_prefix_unmatching = true -- Disable non-prefix matching
			},
			snippet = {
				expand = function(args)
					require('luasnip').lsp_expand(args.body)
				end,
			},
			window = {
				completion = cmp.config.window.bordered(),
				documentation = false,
				-- documentation = cmp.config.window.bordered(),
			},
			mapping = cmp.mapping.preset.insert({
				['<C-b>'] = cmp.mapping.scroll_docs(-4),
				['<C-f>'] = cmp.mapping.scroll_docs(4),
				['<C-Space>'] = cmp.mapping.complete(),
				['<C-e>'] = cmp.mapping.abort(),
				['<CR>'] = cmp.mapping.confirm({ select = true }),
			}),
			sources = cmp.config.sources({
				{ name = 'nvim_lsp' },
				{ name = 'luasnip' },
			}, {
				{ name = 'buffer' },
			})
		})
	end
}
