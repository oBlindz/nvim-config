local lspconfig = require('lspconfig')
local capabilities = require('cmp_nvim_lsp').default_capabilities() -- Importando capacidades otimizadas

-- Configuração do LSP do CSS
lspconfig.cssls.setup({
  on_attach = function(client, bufnr)
    -- Configurações relacionadas ao buffer
    local function buf_set_option(...)
      vim.api.nvim_buf_set_option(bufnr, ...)
    end

    -- Ativando autocomplete e outras funções relevantes
    buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')

    -- Mensagem ao anexar o LSP
    print("LSP do CSS anexado com sucesso ao buffer " .. bufnr)
  end,

  capabilities = capabilities, -- Capabilities melhoradas
  settings = {
    css = {
      validate = true, -- Ativar validação de CSS
    },
    less = {
      validate = true, -- Ativar validação para LESS (opcional)
    },
    scss = {
      validate = true, -- Ativar validação para SCSS (opcional)
    },
  },
})
