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
    config = "require'plugins.colorizer'",
  },

  -- Navigation
  -- NOTE: Requires ripgrep for the 'Telescope live_grep' command.
  {
    'nvim-telescope/telescope.nvim',
    requires = { 'nvim-lua/plenary.nvim' }
  },

  -- Status line
  {
    'hoob3rt/lualine.nvim',
    config    = "require'plugins.lualine'",
    event     = 'VimEnter',
    requires  = 'kyazdani42/nvim-web-devicons',
  },

  -- Indent balnk lines
  {
    'lukas-reineke/indent-blankline.nvim',
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
    config = "require'plugins.devicons'",
  },

  -- File browser
  {
    'kyazdani42/nvim-tree.lua',
    cmd       = { 'NvimTreeToggle', 'NvimTreeFindFile' },
    setup     = "require'plugins.nvimtree'",
    requires  = 'kyazdani42/nvim-web-devicons',
  },

  -- Markdown
  -- 'davidgranstrom/nvim-markdown-preview',

  -- Comments
  {
    'b3nj5m1n/kommentary',
    event = 'BufEnter',
  },

  -- Autopairs
  {
    'tpope/vim-surround',
    event = 'BufEnter',
  },
  {
    'jiangmiao/auto-pairs',
    event  = 'BufEnter',
    -- TODO: fix issue with the module loading.
    -- config = "require'plugins.autopairs'",
  },

  -- Autocomplete
  {
    'hrsh7th/nvim-cmp',
    -- event   = 'BufRead',
    config  = "require'plugins.nvimcmp'",
    requires = {
      'L3MON4D3/LuaSnip',
    },
  },
  {
    'hrsh7th/cmp-buffer',
    after = 'nvim-cmp',
  },
  {
    'hrsh7th/cmp-path',
    after = 'nvim-cmp',
  },
  {
    'hrsh7th/cmp-nvim-lsp',
    after = 'nvim-cmp',
  },

  -- LSP
  {
    'neovim/nvim-lspconfig',
    after = 'cmp-nvim-lsp',
    config = "require'plugins.lspconfig'",
  },

  -- Format
  {
    'lukas-reineke/format.nvim',
    cmd     = {'Format', 'FormatWrite'},
    config  = "require'plugins.format'",
  },

  -- Minimap
  {
    'wfxr/minimap.vim',
    event = 'WinEnter',
    setup = "require'plugins.minimap'",
  },

  -- Outline
  {
    'simrat39/symbols-outline.nvim',
    event = 'WinEnter',
    setup = "require'plugins.outline'",
  },

  -- Terminal
  {
    'akinsho/nvim-toggleterm.lua',
    config = 'require"plugins.toggleterm"',
  },

   -- Git
  {
    'lewis6991/gitsigns.nvim',
    event = "VimEnter",
    requires = {
      'nvim-lua/plenary.nvim'
    },
    config = function()
      require('gitsigns').setup()
    end
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
