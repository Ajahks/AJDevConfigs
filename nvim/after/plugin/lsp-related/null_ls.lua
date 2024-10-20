local null_ls = require('null-ls')
local formatting = null_ls.builtins.formatting
local diagnostics = null_ls.builtins.diagnostics
local code_actions = null_ls.builtins.code_actions
local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

-- before adding any new linters/formatters, make sure that you add them to
-- Mason's list of linters_and_formatters. That way they are ensured to be
-- installed and managed through Mason!
null_ls.setup({

    sources = {
        -------------------------------- FORMATTERS ---------------------------
        formatting.black.with({
            extra_args = { "--line-length=110" }
        }),
        formatting.csharpier,
        formatting.prettierd,
        formatting.rubocop,
        formatting.remark,
        -----------------------------------------------------------------------
        ------------------------------- DIAGNOSTICS ---------------------------
        diagnostics.markdownlint,
        -----------------------------------------------------------------------
        ------------------------------- CODE ACTIONS --------------------------

        -----------------------------------------------------------------------
    },
    --[[
    on_attach = function(client, bufnr)
        if client.supports_method("textDocument/formatting") then
            vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
            vim.api.nvim_create_autocmd("BufWritePre", {
                group = augroup,
                buffer = bufnr,
                callback = function()
                    vim.lsp.buf.format({
                        filter = function(client)
                            return client.name == "null-ls"
                        end,
                        bufnr = bufnr,
                        async = false
                    })
                end,
            })
        end
    end,
    ]]--
})
