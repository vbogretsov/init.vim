local lsp = require('lspconfig')

local caps = vim.lsp.protocol.make_client_capabilities()
caps = require('cmp_nvim_lsp').update_capabilities(caps)

-- C/C++
lsp.clangd.setup{
  capabilities = caps,
  flags = {
    debounce_text_changes = 150,
  }
}
-- Go
-- requires gopls
lsp.gopls.setup {
  capabilities = caps,
  flags = {
    debounce_text_changes = 150,
  }
}
-- Terraform
-- requires terraform-ls
lsp.terraformls.setup {
  cmd = { 'terraform-ls', 'serve' },
  capabilities = caps,
  flags = {
    debounce_text_changes = 150,
  }
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
  flags = {
    debounce_text_changes = 150,
  }
}
-- JSON
lsp.jsonls.setup{
  capabilities = caps,
  flags = {
    debounce_text_changes = 150,
  }
}
-- YAML
lsp.yamlls.setup{
  capabilities = caps,
  flags = {
    debounce_text_changes = 150,
  }
}
