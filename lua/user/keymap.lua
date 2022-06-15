-- Clipboard copy and paste
vim.keymap.set('v', '<C-c>', '"+y', {})
vim.keymap.set('n', '<C-v>', '"+p', {})

-- Window Management
vim.keymap.set('n', '<Leader>wl', '<C-w>l', {})
vim.keymap.set('n', '<Leader>wv', '<C-w>v', {})

-- Telescope Mappings
local telescope = require('telescope')
local telescope_builtin = require('telescope.builtin')

vim.keymap.set('n', '<Leader>ff', telescope_builtin.find_files, {})
vim.keymap.set('n', '<Leader>fg', telescope_builtin.git_files, {})
vim.keymap.set('n', '<Leader>fa', telescope_builtin.live_grep, {})
vim.keymap.set('n', '<Leader>fb', telescope_builtin.buffers, {})
vim.keymap.set('n', '<Leader>fp', telescope.extensions.project.project, {})
vim.keymap.set('n', '<Leader>fe', telescope.extensions.file_browser.file_browser, {})
