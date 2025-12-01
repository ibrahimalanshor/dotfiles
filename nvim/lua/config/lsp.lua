local coq = require "coq"

vim.lsp.config('vue_ls', coq.lsp_ensure_capabilities({}))
vim.lsp.enable('vue_ls')

-- vim.lsp.config('ts_ls', coq.lsp_ensure_capabilities({}))
-- vim.lsp.enable('ts_ls')

vim.lsp.config('vtsls', coq.lsp_ensure_capabilities({
  filetypes = { 'typescript', 'javascript', 'vue' }
}))
vim.lsp.enable('vtsls')
