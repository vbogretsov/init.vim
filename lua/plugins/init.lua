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

  -- Proper buffer deletion
  {
    'famiu/bufdelete.nvim',
    commit = '456a08f',
  },

  -- Clipboard
  {
    'vbogretsov/easyclip.vim',
    event = 'BufEnter',
  },

  -- Color Scheme
  {
    'sainnhe/everforest',
    commit = 'f8b8490',
  },
  {
    'norcalli/nvim-colorizer.lua',
    commit = '36c610a',
    config = "require'plugins.colorizer'",
  },

  -- Navigation
  -- NOTE: Requires ripgrep for the 'Telescope live_grep' command.
  {
    'nvim-telescope/telescope.nvim',
    commit    = '6f82c66',
    config    = "require'plugins.telescope'",
    requires  = { 'nvim-lua/plenary.nvim' }
  },

  -- Status line
  {
    'hoob3rt/lualine.nvim',
    commit    = '98b9c05',
    config    = "require'plugins.lualine'",
    event     = 'VimEnter',
    requires  = 'kyazdani42/nvim-web-devicons',
  },

  -- Buffer line
  {
    'akinsho/bufferline.nvim',
    commit   = '463637a',
    config   = "require'plugins.bufferline'",
    requires = 'kyazdani42/nvim-web-devicons',
  },

  -- Indent balnk lines
  {
    'lukas-reineke/indent-blankline.nvim',
    tag    = 'v2.10.6',
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
    commit = '8df4988',
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
    'windwp/nvim-autopairs',
    commit = 'fd6b301',
    config = "require'plugins.autopairs'",
  },

  -- Autocomplete
  {
    'hrsh7th/nvim-cmp',
    commit   = 'c2a9e0c',
    -- event   = 'BufRead',
    config   = "require'plugins.nvimcmp'",
    requires = {
      'L3MON4D3/LuaSnip',
    },
  },
  {
    'hrsh7th/cmp-buffer',
    commit = 'bfbc32a',
    after  = 'nvim-cmp',
  },
  {
    'hrsh7th/cmp-path',
    commit = '81518cf',
    after  = 'nvim-cmp',
  },
  {
    'hrsh7th/cmp-nvim-lsp',
    commit = '1341172',
    after  = 'nvim-cmp',
  },

  -- LSP
  {
    'neovim/nvim-lspconfig',
    commit = '2e6c940',
    after  = 'cmp-nvim-lsp',
    config = "require'plugins.lspconfig'",
  },

  -- Format
  --[[ {
    'lukas-reineke/format.nvim',
    commit  = 'c46ab8b',
    cmd     = {'Format', 'FormatWrite'},
    config  = "require'plugins.format'",
  }, ]]

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
    commit = 'ff168c8',
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
