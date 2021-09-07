-- Standard options
local o = vim.o
o.shortmess = 'aI'
o.termguicolors = true
o.syntax = 'on'
o.errorbells = false
o.smartcase = true
o.showmode = false
o.backup = false
o.undofile = true
o.incsearch = true
o.hidden = true
o.completeopt='menuone,noinsert,noselect'
o.tabstop = 4
o.softtabstop = 4
o.shiftwidth = 4
o.expandtab = true
o.autoindent = true
o.copyindent = true
o.scrolloff = 15
o.wildmenu = true
o.path = vim.o.path .. '**'
o.fillchars = vim.o.fillchars .. 'vert:│'
o.list = true
o.listchars = 'tab:▸ ,trail:·,space:·'
o.cursorline = true
o.showtabline = 0
o.helpheight = 99999
o.showmatch = true

local bo = vim.bo
bo.swapfile = false
bo.autoindent = true
bo.smartindent = true

local wo = vim.wo
wo.number = true
wo.relativenumber = false
wo.signcolumn = 'yes'
wo.wrap = false

local g = vim.g
g.kommentary_create_default_mappings = false

vim.cmd 'filetype plugin indent on'

-- AutpPairs
g.AutoPairsShortcutToggle = 'æ'
g.AutoPairsShortcutFastWrap = '…'

-- Minimap
-- g.minimap_auto_start = 1
-- g.minimap_auto_start_win_enter = 1
g.minimap_highlight_range = 1
g.minimap_highlight = 'String'

-- Outline
vim.g.symbols_outline = {
  show_guides = false,
  show_symbol_details = false,
  auto_preview = false,
  highlight_hovered_item = false,
  position = 'right',
  width = 15,
}

