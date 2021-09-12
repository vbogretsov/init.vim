vim.cmd[[highlight NvimTreeFolderIcon guibg=blue]]

return require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'everforest',
    -- component_separators = {'', ''},
    component_separators = {'', ''},
    -- section_separators = {'', ''},
    section_separators = {'', ''},
    sources = {'nvim_lsp'},
    symbols = {error = ' ', warn = ' ', info = ' '},
    color_error = '#e68183',
    color_warn = '#e39b7b',
    color_info = '#87c095',
    color_hint = '#868d80',
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'filename'},
    -- lualine_c = {diagnostics},
    lualine_c = {'diagnostics'},
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  extensions = {
    {
      sections = {
        lualine_a = {'filetype'},
      },
      filetypes = {'NvimTree', 'Outline', 'minimap'},
    },
  },
}
