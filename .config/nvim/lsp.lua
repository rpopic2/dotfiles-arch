-- csharp lsp config

local api = vim.api

-- csharp
local aug_csharp_lsp = api.nvim_create_augroup("csharp_lsp", { clear = true })

api.nvim_create_autocmd("BufEnter", {
    group = aug_csharp_lsp,
    pattern = "*.cs",
    callback = function()
        vim.lsp.start({
            name = 'csharp',
            cmd = {'csharp-ls'},
            root_dir = vim.fs.dirname(vim.fs.find({'*.csproj'}, { upward = true })[1])
        })
    end,
})

-- cpp
local aug_cpp_lsp = api.nvim_create_augroup("aug_cpp_lsp", { clear = true })
api.nvim_create_autocmd("BufEnter", {
    group = aug_cpp_lsp,
    pattern = "*.{cpp, c, h}",
    callback = function()
        vim.lsp.start({
            name = 'clangd',
            cmd = {'clangd'},
            root_dir = vim.fs.dirname(vim.fs.find({ "compile_commands.json", ".git" }, { upward = true })[1])
        })
    end,
})


-- aug lsp
local aug_lsp = api.nvim_create_augroup("aug_lsp", { clear = true })

vim.api.nvim_create_autocmd('LspAttach', {
    group = aug_lsp,
    callback = function(args)
        local client = vim.lsp.get_client_by_id(args.data.client_id)
        local opts = { buffer = args.buf }
        if client.server_capabilities.hoverProvider then
            vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
            vim.keymap.set('i', '<c-k>', vim.lsp.buf.signature_help, opts)
            vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, opts)
        end
    end,
})

api.nvim_create_autocmd("CursorHold", {
    group = aug_lsp,
    pattern = "*",
    callback = function()
        vim.lsp.omnifunc()
    end,
})

