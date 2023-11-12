-- csharp lsp config

vim.lsp.start({
    name = 'csharp',
    cmd = {'csharp-ls'},
    root_dir = vim.fs.dirname(vim.fs.find({'*.csproj'}, { upward = true })[1])
})

vim.api.nvim_create_autocmd('LspAttach', {
    callback = function(args)
        local client = vim.lsp.get_client_by_id(args.data.client_id)
        if client.server_capabilities.hoverProvider then
            vim.keymap.set('n', 'K', vim.lsp.buf.hover, { buffer = args.buf })
        end
    end,
})

