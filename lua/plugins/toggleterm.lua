require('toggleterm').setup {
  size = 15,
  open_mapping = [[<c-\>]],
  shade_filetypes = {},
  shade_terminals = false,
  -- shading_factor = '1',
  start_in_insert = true,
  persist_size = true,
  direction = 'float',
  float_opts = {
    border = 'single',
    highlights = {
      border = "Normal",
    }
  }
}
