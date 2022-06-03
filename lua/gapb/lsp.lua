-- Use a loop to conveniently call 'setup' on multiple servers and
-- map buffer local keybindings when the language server attaches
local servers = { 'elmls', 'elixirls', 'tsserver', 'rust_analyzer', 'sumneko_lua' }

for _, lsp in pairs(servers) do
    require('lspconfig')[lsp].setup {
        on_attach = on_attach,
        flags = {}
    }
end

require('lspconfig').elmls.setup {
    on_attach = on_attach,
    settings = {
        elmLS = {
            elmPath = "crazy",
            elmFormatPath = "",
            elmTestPath = ""
        }
    }
}

require('lspconfig').sumneko_lua.setup {
    settings = {
        Lua = {
            runtime = {
                -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
                version = 'LuaJIT',
            },
            diagnostics = {
                -- Get the language server to recognize the `vim` global
                globals = { 'vim' },
            },
            workspace = {
                -- Make the server aware of Neovim runtime files
                library = vim.api.nvim_get_runtime_file("", true),
            },
            -- Do not send telemetry data containing a randomized but unique identifier
            telemetry = {
                enable = false,
            },
        },
    },
}

-- Setup lspconfig.

local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

require('lspconfig')['sumneko_lua'].setup {
    capabilities = capabilities
}
require('lspconfig')['elmls'].setup {
    capabilities = capabilities
}
require('lspconfig')['elixirls'].setup {
    capabilities = capabilities
}
require('lspconfig')['tsserver'].setup {
    capabilities = capabilities
}
require('lspconfig')['rust_analyzer'].setup {
    capabilities = capabilities
}

