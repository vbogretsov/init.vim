vim.g.everforest_sign_column_background = 1
vim.g.everforest_show_eob = 0
vim.g.everforest_better_performance = 1

vim.cmd[[ colorscheme everforest ]]
-- Disable outline highlight (option highlight_hovered_item doesn't work)
vim.cmd[[hi clear FocusedSymbol ]]
