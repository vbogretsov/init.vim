-- Helpers
local function map(mode, lhs, rhs, opts)
  local options = { noremap = true }
  if opts then
    options = vim.tbl_extend('force', options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- Abbreviations
vim.cmd 'cab Q qa'
vim.cmd 'cab W w'
vim.cmd 'cab Wq wq'
-- Clipboard
map('v', 'y', 'y:call ClipboardYank()<cr>', { silent = true })
map('v', 'd', 'd:call ClipboardYank()<cr>', { silent = true })
map('v', 'x', 'x:call ClipboardYank()<cr>', { silent = true })
map('v', 'p', 'p:call ClipboardPaste()<cr>', { silent = true })
map('n', 'p', 'p:call ClipboardPaste()<cr>', { silent = true })
--[[ vnoremap <silent> y y:call ClipboardYank()<cr>
vnoremap <silent> d d:call ClipboardYank()<cr>
nnoremap <silent> p p:call ClipboardPaste()<cr>
vnoremap <silent> p p:call ClipboardPaste()<cr> ]]
-- File tree
map('', 'œ', '<cmd>NvimTreeToggle<cr>') -- alt+-q
map('', '¬', '<cmd>NvimTreeFindFile<cr>') -- alt+l
-- Navigation
map('', 'π', '<cmd>Telescope find_files<cr>') -- alt+p
map('', '∫', '<cmd>Telescope buffers<cr>') -- alt+b
map('', '˙', '<cmd>Telescope help_tags<cr>') -- alt+h
map('', '÷', '<cmd>Telescope live_grep<cr>') -- alt+/
map('', 'ƒ', '<cmd>Telescope current_buffer_fuzzy_find<cr>') -- alt+f
map('', '†', '<cmd>Telescope treesitter<cr>') -- alt+t
map('', '∂', '<cmd>Telescope lsp_definitions<cr>') -- alt+d
map('', '®', '<cmd>Telescope lsp_references<cr>') -- alt+r
map('', 'ß', '<cmd>Telescope lsp_implementations<cr>') -- alt+s
map('', '“', '<cmd>Telescope lsp_document_symbols<cr>') -- alt+[
map('', '‘', '<cmd>Telescope lsp_dynamic_workspace_symbols<cr>') -- alt+]
map('', '∑', '<cmd>Telescope lsp_document_diagnostics<cr>') -- alt+w
map('', '´', '<cmd>Telescope lsp_workspace_diagnostics<cr>') -- alt+e
map('', '©c', '<cmd>Telescope git_commits<cr>') -- alt+g+c
map('', '©s', '<cmd>Telescope git_status<cr>') -- alt+g+s
-- LSP
map('n', 'K', '<cmd>lua vim.lsp.buf.hover()<cr>')
-- Comments
vim.api.nvim_set_keymap("n", "ç", "<Plug>kommentary_line_default", {}) -- alt+c
vim.api.nvim_set_keymap("v", "ç", "<Plug>kommentary_visual_default", {}) -- alt+c
-- Minimap
map('n', 'mm', '<cmd>MinimapToggle<cr>')
map('n', 'tt', '<cmd>SymbolsOutline<cr>')
-- Terminal
-- map('n', '<c-`>', '<c-w>j')
-- map('t', '<c-`>', '<c-\\>n<c-w>k')

