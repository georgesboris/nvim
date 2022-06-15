local cmp = require("cmp")

cmp.setup({
    snippet = {
        expand = function(args)
            vim.fn["vsnip#anonymous"](args.body)
        end,
    },
    sources = {
        { name = "buffer" },
        { name = "nvim_lsp" },
        { name = "path" },
    },
    mapping = cmp.mapping.preset.insert({
        ['<CR>'] = cmp.mapping.confirm({ select = false }),
    })
})

cmp.setup.cmdline(":", {
    sources = { name = "cmdline" }
})

cmp.setup.cmdline("/", {
    sources = { name = "buffer" }
})
