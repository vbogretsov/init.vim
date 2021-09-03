" ========================== Plugin manager ==================================
call plug#begin('~/.config/nvim/plugged')
" Plug 'jiangmiao/auto-pairs'
Plug 'vbogretsov/easyline.vim'
" Plug 'vbogretsov/easytask.vim'
" Plug 'vbogretsov/easypair.vim'
Plug 'vbogretsov/easyclip.vim'
Plug 'altercation/vim-colors-solarized'
" Plug 'yuttie/comfortable-motion.vim'
" Plug 'vim-scripts/SyntaxRange'
" Plug 'nvim-treesitter/nvim-treesitter'
call plug#end()
" ========================== Custom settings =================================
source ~/.config/nvim/opts.vim
source ~/.config/nvim/keys.vim
source ~/.config/nvim/style.vim

" lua require'nvim-treesitter.configs'.setup {ensure_installed = "maintained", highlight = { enable = true } }

" set foldmethod=expr
" set foldexpr=nvim_treesitter#foldexpr()
