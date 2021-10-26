local packer_url = 'https://github.com/wbthomason/packer.nvim'
local install_path = vim.fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'

if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  vim.fn.system({'git', 'clone', packer_url, install_path})
  vim.api.nvim_command[[ packadd packer.nvim ]]
end

local plugins = {
  -- Packer can manage itself
  'wbthomason/packer.nvim',

  {
    'karb94/neoscroll.nvim',
    commit  = 'cd42787',
    event   = 'WinEnter',
    config  = "require'plugins.neoscroll'",
  },

  -- Clipboard
  {
    'vbogretsov/easyclip.vim',
    event = 'BufEnter',
  },

  -- Color Scheme
  'sainnhe/everforest',
  {
    'norcalli/nvim-colorizer.lua',
    tag    = 'v0.2.1',
    config = "require'plugins.colorizer'",
  },

  -- Navigation
  -- NOTE: Requires ripgrep for the 'Telescope live_grep' command.
  {
    'nvim-telescope/telescope.nvim',
    commit    = '782d802',
    config    = "require'plugins.telescope'",
    requires  = { 'nvim-lua/plenary.nvim' }
  },

  -- Status line
  {
    'hoob3rt/lualine.nvim',
    commit    = '8d8c538',
    config    = "require'plugins.lualine'",
    event     = 'VimEnter',
    requires  = 'kyazdani42/nvim-web-devicons',
  },

  -- Indent balnk lines
  {
    'lukas-reineke/indent-blankline.nvim',
    commit = 'v2.9.0',
    event  = 'BufWinEnter',
    config = "require'plugins.indent'",
  },

  -- Tree-Sitter
  {
    'nvim-treesitter/nvim-treesitter',
    event   = 'BufWinEnter',
    run     = ':TSUpdate',
    config  = "require'plugins.treesitter'"
  },
  {
    'windwp/nvim-ts-autotag',
    after = 'nvim-treesitter',
  },

  -- Icons
  {
    'kyazdani42/nvim-web-devicons',
    commit = 'ee10146',
    config = "require'plugins.devicons'",
  },

  -- File browser
  {
    'kyazdani42/nvim-tree.lua',
    tag       = '1.6.7',
    cmd       = { 'NvimTreeToggle', 'NvimTreeFindFile' },
    config    = "require'plugins.nvimtree'",
    requires  = 'kyazdani42/nvim-web-devicons',
  },

  -- Markdown
  -- 'davidgranstrom/nvim-markdown-preview',

  -- Comments
  {
    'b3nj5m1n/kommentary',
    commit = '8f1cd74',
    event  = 'BufEnter',
  },

  -- Autopairs
  {
    'tpope/vim-surround',
    tag   = 'v2.2',
    event = 'BufEnter',
  },
  {
    'jiangmiao/auto-pairs',
    tag    = 'v2.0.0',
    event  = 'BufEnter',
    -- TODO: fix issue with the module loading.
    -- config = "require'plugins.autopairs'",
  },

  -- Autocomplete
  {
    'hrsh7th/nvim-cmp',
    commit   = '32e22e6',
    -- event   = 'BufRead',
    config   = "require'plugins.nvimcmp'",
    requires = {
      'L3MON4D3/LuaSnip',
    },
  },
  {
    'hrsh7th/cmp-buffer',
    commit = '5dde543',
    after  = 'nvim-cmp',
  },
  {
    'hrsh7th/cmp-path',
    commit = '387b740',
    after  = 'nvim-cmp',
  },
  {
    'hrsh7th/cmp-nvim-lsp',
    commit = 'accbe6d',
    after  = 'nvim-cmp',
  },

  -- LSP
  {
    'neovim/nvim-lspconfig',
    commit = '7dc04ca',
    after  = 'cmp-nvim-lsp',
    config = "require'plugins.lspconfig'",
  },

  -- Format
  {
    'lukas-reineke/format.nvim',
    commit  = 'c46ab8b',
    cmd     = {'Format', 'FormatWrite'},
    config  = "require'plugins.format'",
  },

  -- Minimap
  {
    'wfxr/minimap.vim',
    commit = '5c54258',
    event  = 'WinEnter',
    setup  = "require'plugins.minimap'",
  },

  -- Outline
  {
    'simrat39/symbols-outline.nvim',
    commit = '552b679',
    event  = 'WinEnter',
    setup  = "require'plugins.outline'",
  },

  -- Terminal
  {
    'akinsho/nvim-toggleterm.lua',
    commit = '9cdc5e9',
    config = 'require"plugins.toggleterm"',
  },

   -- Git
  {
    'lewis6991/gitsigns.nvim',
    commit = 'v0.3',
    event  = "VimEnter",
    requires = {
      'nvim-lua/plenary.nvim'
    },
    config = function()
      require('gitsigns').setup()
    end
  },

  {
    'smithbm2316/centerpad.nvim',
    commit = '666641d',
  },

  {
    'dhruvasagar/vim-table-mode',
    commit = 'v4.7.3',
  },
}

return require('packer').startup({function(use)
  for _, plug in ipairs(plugins) do
    use(plug)
  end
end,
config = {
  display = {
    open_fn = function()
      return require('packer.util').float({ border = 'single' })
    end
  }
}})
