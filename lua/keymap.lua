-- Abbreviations
vim.cmd[[cab Q qa]]
vim.cmd[[cab W w]]
vim.cmd[[cab Wq wq]]

vim.g.mapleader = ','
-- vim.api.nvim_set_keymap('n', '<Space>', '<NOP>', {noremap = true, silent = true})

vim.api.nvim_set_keymap('i', 'jj', '<ESC>', {noremap = true})
vim.api.nvim_set_keymap('n', '<ESC>', ':nohl<cr>', {noremap = true})
vim.api.nvim_set_keymap('n', '<leader>s', ':w<cr>', {noremap = true})
-- Trim trailing whitespaces
vim.api.nvim_set_keymap('n', '<leader>x', ':%s/\\s\\+$//<cr>', {noremap = true})
vim.api.nvim_set_keymap('i', '<CR>', '<CR>', {})
-- vim.api.nvim_set_keymap('n', '<M-j>', ':resize -2<CR>', {noremap = true, silent = true})
-- vim.api.nvim_set_keymap('n', '<M-k>', ':resize +2<CR>', {noremap = true, silent = true})
-- vim.api.nvim_set_keymap('n', '<M-h>', ':vertical resize -2<CR>', {noremap = true, silent = true})
-- vim.api.nvim_set_keymap('n', '<M-l>', ':vertical resize +2<CR>', {noremap = true, silent = true})

vim.api.nvim_set_keymap('n', '<C-h>', '<C-w>h', {noremap = true, silent = false})
vim.api.nvim_set_keymap('n', '<C-j>', '<C-w>j', {noremap = true, silent = false})
vim.api.nvim_set_keymap('n', '<C-k>', '<C-w>k', {noremap = true, silent = false})
vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>l', {noremap = true, silent = false})

-- Buffers
vim.api.nvim_set_keymap('n', '<leader>w', ':bd<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<Tab>', ':bnext<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<S-Tab>', ':bprevious<CR>', {noremap = true, silent = true})

vim.api.nvim_set_keymap('v', '<', '<gv', {noremap = true, silent = false})
vim.api.nvim_set_keymap('v', '>', '>gv', {noremap = true, silent = false})

vim.api.nvim_set_keymap('x', 'K', ':move \'<-2<CR>gv-gv', {noremap = true, silent = true})
vim.api.nvim_set_keymap('x', 'J', ':move \'>+1<CR>gv-gv', {noremap = true, silent = true})

-- Clipboard
vim.api.nvim_set_keymap('v', 'y', 'y:call ClipboardYank()<cr>', { silent = true })
vim.api.nvim_set_keymap('v', 'd', 'd:call ClipboardYank()<cr>', { silent = true })
vim.api.nvim_set_keymap('v', 'x', 'x:call ClipboardYank()<cr>', { silent = true })
vim.api.nvim_set_keymap('v', 'p', 'p:call ClipboardPaste()<cr>', { silent = true })
vim.api.nvim_set_keymap('n', 'p', 'p:call ClipboardPaste()<cr>', { silent = true })

-- File tree
vim.api.nvim_set_keymap('n', '<leader>q', '<cmd>NvimTreeToggle<cr>', {noremap = true})
vim.api.nvim_set_keymap('n', '<leader>l', '<cmd>NvimTreeFindFile<cr>', {noremap = true})

-- Navigation
vim.api.nvim_set_keymap('n', '<leader>p', '<cmd>Telescope find_files<cr>', {noremap = true})
vim.api.nvim_set_keymap('n', '<leader>b', '<cmd>Telescope buffers<cr>', {noremap = true})
vim.api.nvim_set_keymap('n', '<leader>h', '<cmd>Telescope help_tags<cr>', {noremap = true})
vim.api.nvim_set_keymap('n', '<leader>/', '<cmd>Telescope live_grep<cr>', {noremap = true})
vim.api.nvim_set_keymap('n', '<leader>f', '<cmd>Telescope current_buffer_fuzzy_find<cr>', {noremap = true})
-- vim.api.nvim_set_keymap('n', '<leader>t', '<cmd>Telescope treesitter<cr>', {noremap = true})
vim.api.nvim_set_keymap('n', '<leader>d', '<cmd>Telescope lsp_definitions<cr>', {noremap = true})
vim.api.nvim_set_keymap('n', '<leader>r', '<cmd>Telescope lsp_references<cr>', {noremap = true})
vim.api.nvim_set_keymap('n', '<leader>i', '<cmd>Telescope lsp_implementations<cr>', {noremap = true})
vim.api.nvim_set_keymap('n', '<leader>[', '<cmd>Telescope lsp_document_symbols<cr>', {noremap = true})
vim.api.nvim_set_keymap('n', '<leader>]', '<cmd>Telescope lsp_dynamic_workspace_symbols<cr>', {noremap = true})
vim.api.nvim_set_keymap('n', '<leader>ec', '<cmd>Telescope lsp_document_diagnostics<cr>', {noremap = true})
vim.api.nvim_set_keymap('n', '<leader>ee', '<cmd>Telescope lsp_workspace_diagnostics<cr>', {noremap = true})
vim.api.nvim_set_keymap('n', '<leader>a', '<cmd>Telescope lsp_code_actions<cr>', {noremap = true})
vim.api.nvim_set_keymap('n', '<leader>gc', '<cmd>Telescope git_commits<cr>', {noremap = true})
vim.api.nvim_set_keymap('n', '<leader>gs', '<cmd>Telescope git_status<cr>', {noremap = true})
-- LSP
vim.api.nvim_set_keymap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<cr>', {noremap = true})
vim.api.nvim_set_keymap('n', '<leader>mv', '<cmd>lua vim.lsp.buf.rename()<cr>', {noremap = true, silent = true})

-- Comments
vim.api.nvim_set_keymap("n", "<leader>c", "<Plug>kommentary_line_default", {})
vim.api.nvim_set_keymap("v", "<leader>c", "<Plug>kommentary_visual_default", {})

-- Minimap
vim.api.nvim_set_keymap('n', 'mm', '<cmd>MinimapToggle<cr>', {noremap = true})
vim.api.nvim_set_keymap('n', 'tt', '<cmd>SymbolsOutline<cr>', {noremap = true})

-- Centerpad
vim.api.nvim_set_keymap('n', '<leader>z', '<cmd>Centerpad<cr>', { silent = true, noremap = true })

