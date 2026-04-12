local lspconfig = require('lspconfig')
local capabilities = require('cmp_nvim_lsp').default_capabilities() -- Ou vim.lsp.protocol.make_client_capabilities()

lspconfig.intelephense.setup({
  on_attach = function(client, bufnr)
    print("PHP LSP (Intelephense) iniciado com sucesso no buffer: " .. bufnr)
    vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')
  end,
  capabilities = capabilities, -- Ou use vim.lsp.protocol.make_client_capabilities()
  init_options = {
    storagePath = vim.fn.stdpath('data') .. '/lsp_intelephense',
  },
})
