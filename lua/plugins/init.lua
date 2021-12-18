local packer_url = 'https://github.com/wbthomason/packer.nvim'
local install_path = vim.fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'

if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  vim.fn.system({'git', 'clone', packer_url, install_path})
  vim.api.nvim_command[[ packadd packer.nvim ]]
end

local plugins = {
  -- Packer can manage itself
  'wbthomason/packer.nvim',

  -- Proper buffer deletion
  {
    'famiu/bufdelete.nvim',
    commit = '456a08f',
    event = 'BufWinEnter',
  },

  -- Clipboard
  {
    'vbogretsov/easyclip.vim',
    event = 'BufWinEnter',
  },

  -- Color Scheme
  {
    'vbogretsov/everforest',
  },
  {
    'norcalli/nvim-colorizer.lua',
    commit = '36c610a',
    event = 'BufWinEnter',
    config = "require'plugins.colorizer'",
  },

  -- Navigation
  -- NOTE: Requires to be installed: `ripgrep`, `fd`
  {
    'nvim-telescope/telescope.nvim',
    commit    = '5f37fbf',
    config    = "require'plugins.telescope'",
    event     = 'BufWinEnter',
    requires  = { 'nvim-lua/plenary.nvim' }
  },

  -- Status line
  {
    'hoob3rt/lualine.nvim',
    commit    = '3a17c8f',
    config    = "require'plugins.lualine'",
    event     = 'VimEnter',
    requires  = 'kyazdani42/nvim-web-devicons',
  },

  -- Buffer line
  {
    'akinsho/bufferline.nvim',
    commit   = 'de66766',
    config   = "require'plugins.bufferline'",
    requires = 'kyazdani42/nvim-web-devicons',
    event    = 'VimEnter',
  },

  -- Color column
  {
    'lukas-reineke/virt-column.nvim',
    tag   = 'v1.3.0',
    event = 'BufWinEnter',
    config = "require'plugins.colorcolumn'",
  },

  -- Indent balnk lines
  {
    'lukas-reineke/indent-blankline.nvim',
    tag    = 'v2.11.0',
    event  = 'BufWinEnter',
    config = "require'plugins.indent'",
  },

  -- Tree-Sitter
  {
    'nvim-treesitter/nvim-treesitter',
    event  = 'BufWinEnter',
    run    = ':TSUpdate',
    config = "require'plugins.treesitter'"
  },
  {
    'windwp/nvim-ts-autotag',
    after = 'nvim-treesitter',
  },

  -- Icons
  {
    'kyazdani42/nvim-web-devicons',
    commit = '218658d',
    config = "require'plugins.devicons'",
  },

  -- File browser
  {
    'kyazdani42/nvim-tree.lua',
    commit    = '0aec64d',
    cmd       = { 'NvimTreeToggle', 'NvimTreeFindFile' },
    config    = "require'plugins.nvimtree'",
    requires  = 'kyazdani42/nvim-web-devicons',
  },

  -- Comments
  {
    'b3nj5m1n/kommentary',
    commit = '2e1c3be',
    event  = 'BufWinEnter',
  },

  -- Autopairs
  {
    'tpope/vim-surround',
    tag   = 'v2.2',
    event = 'BufWinEnter',
  },
  {
    'windwp/nvim-autopairs',
    commit = '04cd177',
    event = 'BufWinEnter',
    config = "require'plugins.autopairs'",
  },

  -- Autocomplete
  {
    'hrsh7th/nvim-cmp',
    commit   = '4efecf7',
    event    = 'BufWinEnter',
    config   = "require'plugins.nvimcmp'",
  },
  {
    'hrsh7th/cmp-buffer',
    commit = 'a0fe524',
    after  = 'nvim-cmp',
  },
  {
    'hrsh7th/cmp-path',
    commit = 'e1a6916',
    after  = 'nvim-cmp',
  },
  {
    'hrsh7th/cmp-nvim-lsp',
    commit = '1341172',
    after  = 'nvim-cmp',
  },
  {
    'hrsh7th/cmp-vsnip',
    commit = '0abfa18',
    after  = 'nvim-cmp',
  },
  {
    'hrsh7th/vim-vsnip',
    commit = 'fd13f3f',
    after  = 'nvim-cmp',
  },

  -- LSP
  {
    'neovim/nvim-lspconfig',
    commit = '0f72e54',
    after  = 'cmp-nvim-lsp',
    config = "require'plugins.lspconfig'",
  },

  -- Outline
  {
    'simrat39/symbols-outline.nvim',
    commit = '0347928',
    event  = 'BufEnter',
    setup  = "require'plugins.outline'",
  },

  -- Terminal
  {
    'akinsho/nvim-toggleterm.lua',
    commit = '265bbff',
    config = 'require"plugins.toggleterm"',
    event  = 'BufWinEnter',
  },

   -- Git
  {
    'lewis6991/gitsigns.nvim',
    commit = 'a451f97',
    event  = 'BufWinEnter',
    requires = {
      'nvim-lua/plenary.nvim'
    },
    config = function()
      require('gitsigns').setup()
    end
  },

  --[[ {
    'dhruvasagar/vim-table-mode',
    tag = 'v4.7.5',
    event  = 'BufWinEnter',
  }, ]]
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
