local lspconfig = require('lspconfig')

-- Configuração para o TypeScript Language Server (ts_ls)
lspconfig.ts_ls.setup {
  on_attach = function(client, bufnr)
    -- Exemplo de função de anexação
    print("LSP para TypeScript anexado!")
  end,
  capabilities = vim.lsp.protocol.make_client_capabilities(),
}

