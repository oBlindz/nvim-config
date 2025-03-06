local lspconfig = require('lspconfig')

-- Configuração do LSP do HTML
lspconfig.html.setup({
  on_attach = function(client, bufnr)
    -- Exemplo de função 
    print("LSP do HTML anexado")
  end,
  capabilities = vim.lsp.protocol.make_client_capabilities(),
})
