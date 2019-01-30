" ========================== Basic configuration =============================
" NOTE: this is NeoVim settings, for Vim you need to enable NeolVim defaults
set number                  " show line numbers
set completeopt-=preview    " don't show preview at completion
set nofoldenable            " expand all folds by default
set scrolloff=15            " keep 15 lines top/botton when scrolling
set visualbell              " don't beep is something wrong
set hidden                  " allow switch modified buffers without saving
set noshowmode              " don't show mode information under statusline
set showtabline=0           " never show tabline (use buffers instead of tabs!)
set cursorline              " highlight current line
set nobackup                " don't store bacups
set noswapfile              " don't store swap files
set shiftwidth=4            " default shift size
set tabstop=4               " number of spaces in tab
set expandtab               " replace tabs to spaces
set fillchars+=vert:│       " vertical splits delimiter
set colorcolumn=80          " highlight color 80
set signcolumn=yes          " always show sign column
set path+=**                " traverse nested directories when searching
set wildmenu                " show command line completions
set ignorecase              " ignore case while typing
set smartcase               " mind case if search pattern contains upper case
set showmatch               " highlight matching brackets
set mouse=a                 " mouse suport
set ve=onemore              " allow cursor movement after line ending
                            " WARNING: this option affects 'easypair' plugin
set list                    " show not printable characters
set listchars=tab:▸\ ,trail:·,space:·
" ========================== Color scheme ====================================
" set background=dark
" colorscheme solarized
" ========================== Netrw configurations ============================
let g:netrw_banner=0
let g:netrw_preview=1
let g:netrw_liststyle=3
let g:netrw_browse_split=0
let g:netrw_altv = 1
let g:netrw_winsize=20
autocmd FileType netrw set nolist
" ========================== Commands ========================================
command -nargs=? Help help <args> | only
