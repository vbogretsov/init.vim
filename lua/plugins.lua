return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Clipboard
  use 'vbogretsov/easyclip.vim'

  -- Tree sitter
  use 'nvim-treesitter/nvim-treesitter'
  use 'nvim-treesitter/nvim-treesitter-textobjects'

  -- Syntax
  use 'sheerun/vim-polyglot'
  use 'norcalli/nvim-colorizer.lua'

  use 'lukas-reineke/indent-blankline.nvim'

  -- Color scheme
  use 'sainnhe/everforest'

  -- File browser
  use {
    'kyazdani42/nvim-tree.lua',
    requires = 'kyazdani42/nvim-web-devicons'
  }

  -- Statusline
  use {
    'hoob3rt/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  -- Minimap
  -- requires code-minimap
  use 'wfxr/minimap.vim'
  use 'simrat39/symbols-outline.nvim'

  -- Git
  use {
    'lewis6991/gitsigns.nvim',
    requires = {
      'nvim-lua/plenary.nvim'
    },
    config = function()
      require('gitsigns').setup()
    end
  }
  use 'tpope/vim-fugitive'

  -- Naavigation
  -- NOTE: Requires ripgrep for the 'Telescope live_grep' command.
  use {
    'nvim-telescope/telescope.nvim',
    requires = { 'nvim-lua/plenary.nvim' }
  }

  use 'b3nj5m1n/kommentary'

  -- LSP
  use 'neovim/nvim-lspconfig'

  -- Autocomplete
  use {
    'hrsh7th/nvim-cmp',
    requires = {
      'L3MON4D3/LuaSnip',
      'hrsh7th/cmp-buffer',
      'hrsh7th/cmp-path',
      'hrsh7th/cmp-nvim-lsp',
    }
}

  -- Auto pairs
  use 'jiangmiao/auto-pairs'
  use 'tpope/vim-surround'
  use 'windwp/nvim-ts-autotag'

  -- Formatting
  use 'lukas-reineke/format.nvim'
end)

