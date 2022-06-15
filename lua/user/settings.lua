-- Neovide
vim.g.neovide_remember_window_size = true

-- Font for GUI clients
vim.opt.guifont = { 'FiraCode NF' }

-- Mouse
vim.opt.mouse = 'a'

-- Key Mapping
vim.g.mapleader = "'"

-- Tabs as 4 spaces
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- Options
-- vim.g.syntax = true
vim.opt.number = true
vim.opt.hlsearch = false
vim.opt.wrap = false

-- Autocomplete Options
vim.g.completeopt = "menu, menuone, noselect"

-- Format On Save
vim.api.nvim_create_autocmd("BufWritePre", { command = "lua vim.lsp.buf.formatting_sync()" })

-- Theme
vim.g.termguicolors = true
vim.cmd("colorscheme nightfox")
