vim.g.nvim_tree_indent_markers = 0
vim.g.nvim_tree_follow = 1
vim.g.nvim_tree_auto_close = 0
vim.g.nvim_tree_auto_ignore_ft = 'dashboard'
vim.g.nvim_tree_width = 40
vim.g.nvim_tree_git_hl = 1
-- vim.g.nvim_tree_disable_window_picker = 0

vim.g.nvim_tree_icons = {
  default = '',
  symlink = '',
  git = {
    unstaged = "✗",
    staged = "✓",
    unmerged = "",
    renamed = "➜",
    untracked = "",
    deleted = "",
    ignored = "◌"
  },
  folder = {
    arrow_open = "",
    arrow_closed = "",
    default = "",
    open = "",
    empty = "",
    empty_open = "",
    symlink = "",
    symlink_open = "",
  },
  lsp = {
    hint = "",
    info = "",
    warning = "",
    error = "",
  }
}
