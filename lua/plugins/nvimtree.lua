vim.g.nvim_tree_indent_markers  = 1
vim.g.nvim_tree_git_hl          = 1

vim.g.nvim_tree_icons = {
  default = '',
  symlink = '',
  git = {
    unstaged  = "✗",
    staged    = "✓",
    unmerged  = "",
    renamed   = "➜",
    untracked = "",
    deleted   = "",
    ignored   = "◌"
  },
  folder = {
    arrow_open    = "",
    arrow_closed  = "",
    default       = "",
    open          = "",
    empty         = "",
    empty_open    = "",
    symlink       = "",
    symlink_open  = "",
  },
}

require('nvim-tree').setup {
  disable_netrw   = true,
  hijack_netrw    = true,
  follow          = true,
  auto_close      = true,
  indent_markers  = false,
  auto_ignore_ft  = 'dashboard',

  view = {
    width = 40,
  }
}

