-- https://github.com/nvim-treesitter/nvim-treesitter-textobjects

return {
	"nvim-treesitter/nvim-treesitter-textobjects",
	-- lazy = true,
	config = function()
		require("nvim-treesitter.configs").setup({
			textobjects = {
				select = {
					enable = true,
					lookahead = true,
					keymaps = {
						["a="] = { query = "@assignment.outer", desc = "Select outer part of an assignment" },
						["i="] = { query = "@assignment.inner", desc = "Select inner part of an assignment" },
						["l="] = { query = "@assignment.lhs", desc = "Select left hand side of an assignment" },
						["r="] = { query = "@assignment.rhs", desc = "Select right hand side of an assignment" },

						["ap"] = { query = "@parameter.outer", desc = "Select outer part of a parameter/argument" },
						["ip"] = { query = "@parameter.inner", desc = "Select inner part of a parameter/argument" },

						["ab"] = { query = "@block.outer", desc = "Select outer part of a block" },
						["ib"] = { query = "@block.inner", desc = "Select inner part of a block" },

						["ai"] = { query = "@conditional.outer", desc = "Select outer part of a conditional" },
						["ii"] = { query = "@conditional.inner", desc = "Select inner part of a conditional" },

						["al"] = { query = "@loop.outer", desc = "Select outer part of a loop" },
						["il"] = { query = "@loop.inner", desc = "Select inner part of a loop" },

						["ad"] = { query = "@call.outer", desc = "Select outer part of a function call" },
						["id"] = { query = "@call.inner", desc = "Select inner part of a function call" },

						["af"] = { query = "@function.outer", desc = "Select outer part of a method/function definition" },
						["if"] = { query = "@function.inner", desc = "Select inner part of a method/function definition" },

						["ac"] = { query = "@class.outer", desc = "Select outer part of a class" },
						["ic"] = { query = "@class.inner", desc = "Select inner part of a class" },

						["as"] = { query = "@scope", query_group = "locals", desc = "Select language scope" },
					},
				},
			},
		})
	end
}
