-- Install language servers through 'williamboman/nvim-lsp-installer'

require("nvim-lsp-installer").setup {}

-- Grab autocmd capabilities from cmp_nvim_lsp

local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

-- Add key bindings


local on_attach = function(_, buffern)
    local buffer_opts = { noremap = true, silent = true, buffer = buffern }

    vim.api.nvim_create_autocmd("BufWritePre", { command = "lua vim.lsp.buf.formatting_sync()" })
    vim.api.nvim_create_autocmd("InsertLeavePre", { command = "lua vim.lsp.buf.formatting_sync()" })

    vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, buffer_opts)
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, buffer_opts)
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, buffer_opts)
    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, buffer_opts)
    vim.keymap.set('n', '<Leader>la', vim.lsp.buf.code_action, buffer_opts)
    vim.keymap.set('n', '<Leader>lr', vim.lsp.buf.rename, buffer_opts)
    vim.keymap.set('n', '<Leader>lf', vim.lsp.buf.formatting, buffer_opts)
end

-- Init language servers

require('lspconfig').elmls.setup {
    capabilities = capabilities,
    on_attach = on_attach,
}

require('lspconfig').elixirls.setup {
    capabilities = capabilities,
    on_attach = on_attach,
}

require('lspconfig').pyright.setup {
    capabilities = capabilities,
    on_attach = on_attach,
}

require('lspconfig').rust_analyzer.setup {
    capabilities = capabilities,
    on_attach = on_attach,
}

require('lspconfig').sumneko_lua.setup {
    capabilities = capabilities,
    on_attach = on_attach,
    settings = {
        Lua = {
            diagnostics = {
                globals = { 'vim' },
            },
            workspace = {
                library = vim.api.nvim_get_runtime_file("", true),
            },
        },
    },
}

require('lspconfig').tsserver.setup {
    capabilities = capabilities,
    on_attach = on_attach,
}
