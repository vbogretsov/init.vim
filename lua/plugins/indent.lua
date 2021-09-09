require('indent_blankline').setup {
  filetype_exclude = { 'terminal', 'help', 'outline', 'dashboard' },
  char = '┊',
  use_treesitter = true,
  show_first_indent_level = false,
  strict_tabs = true,
  space_char_blankline = ' ',
  show_trailing_blankline_indent = false,
}