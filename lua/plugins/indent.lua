require('indent_blankline').setup {
  filetype_exclude = { 'terminal', 'help', 'outline', 'dashboard', 'packer', 'NvimTree' },
  char = '┊',
  use_treesitter = true,
  show_first_indent_level = false,
  strict_tabs = true,
  space_char_blankline = ' ',
  space_char = ' ',
  show_trailing_blankline_indent = false,
}
