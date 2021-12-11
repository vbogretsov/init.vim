local packer_url = 'https://github.com/wbthomason/packer.nvim'
local install_path = vim.fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'

if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  vim.fn.system({'git', 'clone', packer_url, install_path})
  vim.api.nvim_command[[ packadd packer.nvim ]]
end

local plugins = {
  -- Packer can manage itself
  'wbthomason/packer.nvim',

  --[[ {
    'karb94/neoscroll.nvim',
    commit  = 'cd42787',
    event   = 'WinEnter',
    config  = "require'plugins.neoscroll'",
  }, ]]

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
    commit = '0d1576a',
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
    commit    = '5f37fbf',
    config    = "require'plugins.telescope'",
    requires  = { 'nvim-lua/plenary.nvim' }
  },

  -- Status line
  {
    'hoob3rt/lualine.nvim',
    commit    = '5596c2a',
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
    tag    = 'v2.11.0',
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
    commit = '3443314',
    config = "require'plugins.devicons'",
  },

  -- File browser
  {
    'kyazdani42/nvim-tree.lua',
    -- tag       = '1.6.7',
    commit    = '2e33b16',
    cmd       = { 'NvimTreeToggle', 'NvimTreeFindFile' },
    config    = "require'plugins.nvimtree'",
    requires  = 'kyazdani42/nvim-web-devicons',
  },

  -- Markdown
  -- 'davidgranstrom/nvim-markdown-preview',

  -- Comments
  {
    'b3nj5m1n/kommentary',
    commit = '2e1c3be',
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
    commit = '04cd177',
    config = "require'plugins.autopairs'",
  },

  -- Autocomplete
  {
    'hrsh7th/nvim-cmp',
    commit   = 'af07ff9',
    config   = "require'plugins.nvimcmp'",
    requires = {
      'L3MON4D3/LuaSnip',
    },
  },
  {
    'hrsh7th/cmp-buffer',
    commit = 'a0fe524',
    after  = 'nvim-cmp',
  },
  {
    'hrsh7th/cmp-path',
    commit = 'd83839a',
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
    commit = 'e6d9586',
    after  = 'cmp-nvim-lsp',
    config = "require'plugins.lspconfig'",
  },

  -- Minimap
  -- requires code-minimap
  {
    'wfxr/minimap.vim',
    commit = '35c0dd7',
    event  = 'WinEnter',
    setup  = "require'plugins.minimap'",
  },

  -- Outline
  {
    'simrat39/symbols-outline.nvim',
    commit = '0347928',
    event  = 'WinEnter',
    setup  = "require'plugins.outline'",
  },

  -- Terminal
  {
    'akinsho/nvim-toggleterm.lua',
    commit = '265bbff',
    config = 'require"plugins.toggleterm"',
  },

   -- Git
  {
    'lewis6991/gitsigns.nvim',
    commit = 'aaf6804',
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
    tag = 'v4.7.5',
  },

  {
    'editorconfig/editorconfig-vim',
    tag = 'v1.1.1',
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
