local g = vim.g
g.everforest_sign_column_background = 1
g.everforest_show_eob = 0
g.everforest_better_performance = 1

local cmd = vim.cmd
cmd 'colorscheme everforest'
-- Disable outline highlight (option highlight_hovered_item doesn't work)
cmd 'hi clear FocusedSymbol'
