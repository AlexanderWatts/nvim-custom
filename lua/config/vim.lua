-- Leader
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

vim.keymap.set("n", "gd", function()
	vim.lsp.buf.definition()
end)

vim.api.nvim_set_keymap("n", "<leader>ca", ":lua vim.lsp.buf.code_action()<CR>", {
	silent = true,
	noremap = true,
})

vim.opt.mouse = "a"
vim.opt.updatetime = 50
vim.opt.wrap = false

-- Indentation
vim.opt.autoindent = true
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.tabstop = 4
vim.opt.expandtab = false

-- Scroll
vim.opt.scrolloff = 20

-- Lines
vim.opt.number = true
vim.opt.relativenumber = true

-- Visual mode movements (thanks primeagen)
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "<Ctl-d>", "<Ctl-d>zz")
vim.keymap.set("n", "<Ctl-u>", ":m '<Ctl-u>zz")

vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Clipboard (thanks primeagen)
vim.keymap.set("x", "<leader>p", '"_dP')
vim.opt.clipboard:append("unnamedplus")

-- Search
vim.opt.hlsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.signcolumn = "yes"
vim.opt.backup = false

vim.opt.undofile = true
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.termguicolors = true
vim.opt.writebackup = false
vim.opt.swapfile = false
