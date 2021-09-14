local lsp = require('lspconfig')

local caps = vim.lsp.protocol.make_client_capabilities()
caps = require('cmp_nvim_lsp').update_capabilities(caps)

-- C/C++
lsp.clangd.setup{
  capabilities = caps,
}
-- Go
-- requires gopls
lsp.gopls.setup {
  capabilities = caps,
}
-- Terraform
-- requires terraform-ls
lsp.terraformls.setup {
  cmd = { 'terraform-ls', 'serve' },
  capabilities = caps,
}
-- Python
-- requires pyright
lsp.pyright.setup {
  settings = {
    python = {
      venvPath = ".",
    },
  },
  capabilities = caps,
}
-- JSON
lsp.jsonls.setup{
  capabilities = caps,
}
-- YAML
lsp.yamlls.setup{
  capabilities = caps,
}
