local coq = require "coq"

local vue_language_server = vim.fn.expand(vim.fn.stdpath "data" .. "/mason/packages/vue-language-server/node_modules/@vue/language-server")

vim.lsp.config('vue_ls', coq.lsp_ensure_capabilities({
  init_options = {
    vue = { hybridMode = false }
  }
}))
vim.lsp.enable('vue_ls')

vim.lsp.config('ts_ls', coq.lsp_ensure_capabilities({
  init_options = {
    plugins = {
      {
        name = "@vue/typescript-plugin",
        location = vue_language_server,
        languages = { "vue", "javascript", "typescript" },
      },
    },
  },
  filetypes = {
    "typescript",
    "javascript",
    "javascriptreact",
    "typescriptreact",
    "vue",
  },
}))
vim.lsp.enable('ts_ls')

vim.lsp.enable('astro', coq.lsp_ensure_capabilities())
vim.lsp.enable('astro')

-- vim.lsp.config('vtsls', coq.lsp_ensure_capabilities({
--   filetypes = { 'typescript', 'javascript', 'vue' }
-- }))
-- vim.lsp.enable('vtsls')
