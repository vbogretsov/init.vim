local lsp = require('lspconfig')
local cmp = require('cmp')
local luasnip = require('luasnip')

require('nvim-treesitter.configs').setup {
  ensure_installed = 'maintained',
  highlight = {
    enable = true,
  },
  indent = {
    enable = true,
  },
  autotag = {
    enable = true,
  },
  textobjects = {
    select = {
      enable = true,
      lookahead = true, -- Automatically jump forward to textobj, similar to targets.vim
      keymaps = {
        -- You can use the capture groups defined in textobjects.scm
        ['af'] = '@function.outer',
        ['if'] = '@function.inner',
        ['ac'] = '@class.outer',
        ['ic'] = '@class.inner',
      },
    },
    move = {
      enable = true,
      set_jumps = true, -- whether to set jumps in the jumplist
      goto_next_start = {
        ["mf"] = '@function.outer',
        ["mc"] = '@class.outer',
        ['mb'] = '@block.outer',
      },
      --[[ goto_next_end = {
        [''] = '@function.outer',
        [''] = '@class.outer',
      }, ]]
      goto_previous_start = {
        ["mF"] = '@function.outer',
        ["mC"] = '@class.outer',
      },
      --[[ goto_previous_end = {
        [''] = '@function.outer',
        [''] = '@class.outer',
      }, ]]
    },
  },
}


cmp.setup {
  sources = {
    { name = 'buffer' },
    { name = 'path' },
    { name = 'nvim_lsp' },
  },
  snippet = {
    expand = function(args)
      luasnip.lsp_expand(args.body)
    end
  },
  mapping = {
    ['<C-p>'] = cmp.mapping.select_prev_item(),
    ['<C-n>'] = cmp.mapping.select_next_item(),
    ['<C-d>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.close(),
    ['<CR>'] = cmp.mapping.confirm {
      behavior = cmp.ConfirmBehavior.Replace,
      -- select = true,
    },
    ['<Tab>'] = function(fallback)
      if vim.fn.pumvisible() == 1 then
        vim.fn.feedkeys(vim.api.nvim_replace_termcodes('<C-n>', true, true, true), 'n')
      else
        fallback()
      end
    end,
    ['<S-Tab>'] = function(fallback)
      if vim.fn.pumvisible() == 1 then
        vim.fn.feedkeys(vim.api.nvim_replace_termcodes('<C-p>', true, true, true), 'n')
      else
        fallback()
      end
    end,
  },
}

local caps = vim.lsp.protocol.make_client_capabilities()
caps = require('cmp_nvim_lsp').update_capabilities(caps)

-- Json
lsp.jsonls.setup {
  commands = {
    Format = {
      function()
        vim.lsp.buf.range_formatting({},{0,0},{vim.fn.line("$"),0})
      end
    }
  },
  capabilities = caps
}

-- Yaml
lsp.yamlls.setup {
  capabilities = caps,
}

-- Go
-- requires gopls
lsp.gopls.setup {
  capabilities = caps,
}
-- Terraform
-- requires terraform-ls
lsp.terraformls.setup {
  cmd = { 'terraform-ls', 'serve' },
  capabilities = caps,
}
-- Python
-- requires pyright
lsp.pyright.setup {
  settings = {
    python = {
      venvPath = ".",
    },
  },
  capabilities = caps,
}

