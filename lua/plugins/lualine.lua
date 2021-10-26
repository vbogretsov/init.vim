vim.cmd[[highlight NvimTreeFolderIcon guibg=blue]]

return require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'everforest',
    component_separators = {left = '', right = ''},
    section_separators = {left = '', right = ''},
    -- symbols = {error = ' ', warn = ' ', info = ' '},
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'filename'},
    lualine_c = {'branch', {
      'diagnostics',
      sources = {'nvim_lsp'},
      diagnostics_color = {
        error   = { fg = '#e68183' },
        warning = { fg = '#e39b7b' },
        info    = { fg = '#87c095' },
        hint    = { fg = '#868d80' },
      },
      symbols = {error = ' ', warn = ' ', info = ' ', hint = ''},
    }},
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
