vim.cmd[[highlight NvimTreeFolderIcon guibg=blue]]

return require('lualine').setup {
  options = {
    icons_enabled = false,
    theme = 'everforest',
    component_separators = {'', ''},
    section_separators = {'', ''},
    -- disabled_filetypes = {'NvimTree', 'Outline'},
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'filename'},
    lualine_c = {''},
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
      filetypes = {'NvimTree'},
    },
  },
}
