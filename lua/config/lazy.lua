local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
end
vim.opt.rtp:prepend(lazypath)

require("config.vim")
require("config.auto-commands")

require("lazy").setup({
	spec = {
		{ import = "plugins.formatting" },
		{ import = "plugins.snippets" },
		{ import = "plugins.themes" },
		{ import = "plugins.lsps" },
		{ import = "plugins" },
	},
	change_detection = { notify = false },
	checker = { enabled = true },
	ui = {
		border = "rounded", -- Other options: "single", "double", "shadow", etc.
	},
})
