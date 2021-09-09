-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/Users/v.bogretsov/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/Users/v.bogretsov/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/Users/v.bogretsov/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/Users/v.bogretsov/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/v.bogretsov/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  LuaSnip = {
    loaded = true,
    path = "/Users/v.bogretsov/.local/share/nvim/site/pack/packer/start/LuaSnip"
  },
  ["auto-pairs"] = {
    loaded = false,
    needs_bufread = false,
    path = "/Users/v.bogretsov/.local/share/nvim/site/pack/packer/opt/auto-pairs"
  },
  ["cmp-buffer"] = {
    after_files = { "/Users/v.bogretsov/.local/share/nvim/site/pack/packer/opt/cmp-buffer/after/plugin/cmp_buffer.lua" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/Users/v.bogretsov/.local/share/nvim/site/pack/packer/opt/cmp-buffer"
  },
  ["cmp-nvim-lsp"] = {
    after = { "nvim-lspconfig" },
    after_files = { "/Users/v.bogretsov/.local/share/nvim/site/pack/packer/opt/cmp-nvim-lsp/after/plugin/cmp_nvim_lsp.lua" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/Users/v.bogretsov/.local/share/nvim/site/pack/packer/opt/cmp-nvim-lsp"
  },
  ["cmp-path"] = {
    after_files = { "/Users/v.bogretsov/.local/share/nvim/site/pack/packer/opt/cmp-path/after/plugin/cmp_path.lua" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/Users/v.bogretsov/.local/share/nvim/site/pack/packer/opt/cmp-path"
  },
  ["easyclip.vim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/Users/v.bogretsov/.local/share/nvim/site/pack/packer/opt/easyclip.vim"
  },
  everforest = {
    loaded = true,
    path = "/Users/v.bogretsov/.local/share/nvim/site/pack/packer/start/everforest"
  },
  ["format.nvim"] = {
    commands = { "Format", "FormatWrite" },
    config = { "require'plugins.format'" },
    loaded = false,
    needs_bufread = false,
    path = "/Users/v.bogretsov/.local/share/nvim/site/pack/packer/opt/format.nvim"
  },
  ["indent-blankline.nvim"] = {
    config = { "require'plugins.indent'" },
    loaded = false,
    needs_bufread = false,
    path = "/Users/v.bogretsov/.local/share/nvim/site/pack/packer/opt/indent-blankline.nvim"
  },
  kommentary = {
    loaded = false,
    needs_bufread = false,
    path = "/Users/v.bogretsov/.local/share/nvim/site/pack/packer/opt/kommentary"
  },
  ["lualine.nvim"] = {
    config = { "require'plugins.lualine'" },
    loaded = false,
    needs_bufread = false,
    path = "/Users/v.bogretsov/.local/share/nvim/site/pack/packer/opt/lualine.nvim"
  },
  ["minimap.vim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/Users/v.bogretsov/.local/share/nvim/site/pack/packer/opt/minimap.vim"
  },
  ["neoscroll.nvim"] = {
    config = { "require'plugins.neoscroll'" },
    loaded = false,
    needs_bufread = false,
    path = "/Users/v.bogretsov/.local/share/nvim/site/pack/packer/opt/neoscroll.nvim"
  },
  ["nvim-cmp"] = {
    after = { "cmp-path", "cmp-buffer", "cmp-nvim-lsp" },
    loaded = true,
    only_config = true
  },
  ["nvim-colorizer.lua"] = {
    config = { "require'plugins.colorizer'" },
    loaded = true,
    path = "/Users/v.bogretsov/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua"
  },
  ["nvim-lspconfig"] = {
    config = { "require'plugins.lspconfig'" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/Users/v.bogretsov/.local/share/nvim/site/pack/packer/opt/nvim-lspconfig"
  },
  ["nvim-toggleterm.lua"] = {
    config = { 'require"plugins.toggleterm"' },
    loaded = true,
    path = "/Users/v.bogretsov/.local/share/nvim/site/pack/packer/start/nvim-toggleterm.lua"
  },
  ["nvim-tree.lua"] = {
    commands = { "NvimTreeToggle" },
    loaded = false,
    needs_bufread = false,
    path = "/Users/v.bogretsov/.local/share/nvim/site/pack/packer/opt/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    after = { "nvim-ts-autotag" },
    config = { "require'plugins.treesitter'" },
    loaded = false,
    needs_bufread = true,
    path = "/Users/v.bogretsov/.local/share/nvim/site/pack/packer/opt/nvim-treesitter"
  },
  ["nvim-ts-autotag"] = {
    load_after = {
      ["nvim-treesitter"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/Users/v.bogretsov/.local/share/nvim/site/pack/packer/opt/nvim-ts-autotag"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/Users/v.bogretsov/.local/share/nvim/site/pack/packer/start/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/Users/v.bogretsov/.local/share/nvim/site/pack/packer/start/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/Users/v.bogretsov/.local/share/nvim/site/pack/packer/start/plenary.nvim"
  },
  ["symbols-outline.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/Users/v.bogretsov/.local/share/nvim/site/pack/packer/opt/symbols-outline.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/Users/v.bogretsov/.local/share/nvim/site/pack/packer/start/telescope.nvim"
  },
  ["vim-surround"] = {
    loaded = false,
    needs_bufread = false,
    path = "/Users/v.bogretsov/.local/share/nvim/site/pack/packer/opt/vim-surround"
  }
}

time([[Defining packer_plugins]], false)
-- Setup for: symbols-outline.nvim
time([[Setup for symbols-outline.nvim]], true)
require'plugins.outline'
time([[Setup for symbols-outline.nvim]], false)
-- Setup for: nvim-tree.lua
time([[Setup for nvim-tree.lua]], true)
require'plugins.nvimtree'
time([[Setup for nvim-tree.lua]], false)
-- Setup for: minimap.vim
time([[Setup for minimap.vim]], true)
require'plugins.minimap'
time([[Setup for minimap.vim]], false)
-- Config for: nvim-toggleterm.lua
time([[Config for nvim-toggleterm.lua]], true)
require"plugins.toggleterm"
time([[Config for nvim-toggleterm.lua]], false)
-- Config for: nvim-colorizer.lua
time([[Config for nvim-colorizer.lua]], true)
require'plugins.colorizer'
time([[Config for nvim-colorizer.lua]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
require'plugins.nvimcmp'
time([[Config for nvim-cmp]], false)
-- Load plugins in order defined by `after`
time([[Sequenced loading]], true)
vim.cmd [[ packadd cmp-nvim-lsp ]]
vim.cmd [[ packadd nvim-lspconfig ]]

-- Config for: nvim-lspconfig
require'plugins.lspconfig'

vim.cmd [[ packadd cmp-buffer ]]
vim.cmd [[ packadd cmp-path ]]
time([[Sequenced loading]], false)

-- Command lazy-loads
time([[Defining lazy-load commands]], true)
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Format lua require("packer.load")({'format.nvim'}, { cmd = "Format", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file FormatWrite lua require("packer.load")({'format.nvim'}, { cmd = "FormatWrite", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file NvimTreeToggle lua require("packer.load")({'nvim-tree.lua'}, { cmd = "NvimTreeToggle", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]])
time([[Defining lazy-load commands]], false)

vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Event lazy-loads
time([[Defining lazy-load event autocommands]], true)
vim.cmd [[au WinEnter * ++once lua require("packer.load")({'symbols-outline.nvim', 'minimap.vim', 'neoscroll.nvim'}, { event = "WinEnter *" }, _G.packer_plugins)]]
vim.cmd [[au BufWinEnter * ++once lua require("packer.load")({'nvim-treesitter', 'indent-blankline.nvim'}, { event = "BufWinEnter *" }, _G.packer_plugins)]]
vim.cmd [[au BufEnter * ++once lua require("packer.load")({'auto-pairs', 'easyclip.vim', 'vim-surround', 'kommentary'}, { event = "BufEnter *" }, _G.packer_plugins)]]
vim.cmd [[au VimEnter * ++once lua require("packer.load")({'lualine.nvim'}, { event = "VimEnter *" }, _G.packer_plugins)]]
time([[Defining lazy-load event autocommands]], false)
vim.cmd("augroup END")
if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
