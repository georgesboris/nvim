-- Settings
vim.g.mouse = "a"
vim.g.mapleader = "'"
vim.g.wildignore = "node_modules/*,elm-stuff/*,.git/*"

-- Commands (not yet available in nvim afaik)
vim.cmd("set termguicolors")
vim.cmd("colorscheme iceberg")

-- Options
vim.opt.number = true
vim.opt.hlsearch = false
vim.opt.wrap = false

-- Indentation
vim.bo.tabstop = 4
vim.bo.shiftwidth = 4
vim.bo.expandtab = true
vim.bo.autoindent = true

