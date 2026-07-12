---@type vim.lsp.Config 
return {
  cmd       = {'devsense-php-ls','--stdio'},
  filetypes = {'php'},
  root_dir  = function(bufnr,on_dir)
    local fname = vim.api.nvim_buf_get_name(bufnr)
    local cwd   = assert(vim.uv.cwd())
    local root  = vim.fs.root(fname, {'composer.json','.git'})
    on_dir(root and vim.fs.relpath(cwd,root) and cwd)
  end,
  on_attach = function(client, bufnr)
    vim.lsp.completion.enable(true, client.id, bufnr, {
    autotrigger = true,
    convert = function(item)
      return { abbr = item.label:gsub("%b()", "") }
    end,
  })
  end,
}
