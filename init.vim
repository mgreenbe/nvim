set nu
set expandtab
set tabstop=2
set shiftwidth=2
set noerrorbells
set ignorecase " Make searching case insensitive...
set smartcase  " ... unless the query has capital letters.
set background=dark

call plug#begin('~/.config/nvim/plugged')
Plug 'mxw/vim-jsx'
Plug 'pangloss/vim-javascript'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'ervandew/supertab'
Plug 'kien/ctrlp.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ternjs/tern_for_vim', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'carlitux/deoplete-ternjs', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'neomake/neomake'
"Plug 'othree/jspc.vim', { 'for': ['javascript', 'javascript.jsx'] }
call plug#end()

let g:airline#extensions#tabline#enabled = 2
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#right_sep = ' '
let g:airline#extensions#tabline#right_alt_sep = '|'
let g:airline_left_sep = ' '
let g:airline_left_alt_sep = '|'
let g:airline_right_sep = ' '
let g:airline_right_alt_sep = '|'
let g:airline_theme= 'luna'

let g:deoplete#enable_at_startup = 1

autocmd FileType javascript let g:SuperTabDefaultCompletionType = "<c-x><c-o>"
let g:UltiSnipsExpandTrigger="<C-j>"
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

set completeopt-=preview

let g:neomake_javascript_enabled_makers = ['eslint']

let g:jsx_ext_required = 0 " Allow JSX in normal JS files
