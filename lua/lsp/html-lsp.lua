local lspconfig = require('lspconfig')
local capabilities = require('cmp_nvim_lsp').default_capabilities() -- Importando capacidades do cmp_nvim_lsp

-- Configuração do LSP do HTML
lspconfig.html.setup({
  on_attach = function(client, bufnr)
    -- Configurações relacionadas ao buffer
    local function buf_set_option(...)
      vim.api.nvim_buf_set_option(bufnr, ...)
    end

    -- Ativando autocomplete e outras funções relevantes
    buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')

    -- Exemplo de função ao anexar
    print("LSP do HTML anexado com sucesso ao buffer " .. bufnr)
  end,

  capabilities = capabilities, -- Capabilities melhoradas
  settings = {
    html = {
      format = {
        wrapLineLength = 120,
        enable = true, -- Ativar formatação automática
      },
    },
  },
})

