local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp_zero.default_keymaps({buffer = bufnr})
  vim.keymap.set('n', '<A-CR>', '<cmd>lua vim.lsp.buf.code_action()<cr>', {buffer = bufnr})
end)

require('mason').setup({})
require('mason-lspconfig').setup({
  ensure_installed = {
	'kotlin_language_server',
	'eslint',
	'clangd',
    'lua_ls',
    'bashls'
  },
  handlers = {
    lsp_zero.default_setup,
  },
})

local cmp = require('cmp')

cmp.setup({
  mapping = cmp.mapping.preset.insert({
    ['<CR>'] = cmp.mapping.confirm({select = false}),
  }),

  preselect = 'item',
  completion = {
    completeopt = 'menu,menuone,noinsert'
  },
})

