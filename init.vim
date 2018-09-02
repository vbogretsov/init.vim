" ========================== Plugin manager ==================================
call plug#begin('~/.config/nvim/plugged')
" Plug 'altercation/vim-colors-solarized'
Plug 'jiangmiao/auto-pairs'
Plug 'vbogretsov/easyline.vim'
Plug 'vbogretsov/easytask.vim'
Plug 'vbogretsov/easypair.vim'
Plug 'vbogretsov/easyclip.vim'
call plug#end()
" ========================== Custom settings =================================
source ~/.config/nvim/opts.vim
source ~/.config/nvim/keys.vim
source ~/.config/nvim/style.vim