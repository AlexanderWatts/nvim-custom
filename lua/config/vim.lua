-- Leader
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

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

-- Clipboard (thanks primeagen)
vim.keymap.set("x", "<leader>p", "\"_dP")
vim.opt.clipboard:append("unnamedplus")

