set runtimepath^=~/.local/nvim runtimepath+=~/.local/nvim/after
let &packpath = &runtimepath

call plug#begin('~/.local/nvim/plugged')
Plug 'hoob3rt/lualine.nvim'
Plug 'gitluin/forest-night'
Plug 'kshenoy/vim-signature'
Plug 'sainnhe/everforest'
Plug 'cespare/vim-toml'
call plug#end()

set mouse=a
set autoindent
set nomodeline
set nojoinspaces
filetype indent on
syntax on
set hidden
set wildmode=longest:list,full
set splitright
set splitbelow
set clipboard+=unnamedplus
set colorcolumn=80

" Visibility
set number
set relativenumber
set cursorline
set termguicolors

let g:lualine = {
    \'options' : {
    \  'theme' : 'everforest',
    \  'section_separators' : '',
    \  'component_separators' : '',
    \  'icons_enabled' : v:true,
    \},
    \'sections' : {
    \  'lualine_a' : [ ['mode', {'upper': v:true,},], ],
    \  'lualine_b' : [  ],
    \  'lualine_c' : [ ['filename', {'file_status': v:true,},], ],
    \  'lualine_x' : [ 'encoding' ],
    \  'lualine_y' : [ 'progress' ],
    \  'lualine_z' : [ 'location' ],
    \},
    \'inactive_sections' : {
    \  'lualine_a' : [  ],
    \  'lualine_b' : [  ],
    \  'lualine_c' : [ 'filename' ],
    \  'lualine_x' : [ 'location' ],
    \  'lualine_y' : [  ],
    \  'lualine_z' : [  ],
    \}
\}
lua require('lualine').setup()

" Colors
colorscheme forest-night

" Exit terminal with Esc
tnoremap <Esc> <C-\><C-n>

let mapleader="\<Space>"

nnoremap <Leader><C-i> :tabnext<CR>
nnoremap <Leader><C-t> :tabnew<CR>
nnoremap <Leader><C-w> :tabclose<CR>

" Clear search highlighting
nmap <silent> <C-l> :noh<CR>

" Move through panes
nmap <silent> <A-k> :wincmd k<CR>
nmap <silent> <A-j> :wincmd j<CR>
nmap <silent> <A-h> :wincmd h<CR>
nmap <silent> <A-l> :wincmd l<CR>
" Move panes around
nmap <silent> <A-K> :wincmd K<CR>
nmap <silent> <A-J> :wincmd J<CR>
nmap <silent> <A-H> :wincmd H<CR>
nmap <silent> <A-L> :wincmd L<CR>
" Resize panes
nmap <silent> <A-<> :wincmd ><CR>
nmap <silent> <A->> :wincmd <<CR>
" Quit panes
nmap <silent> <A-q> :wincmd q<CR>
" Open new vertical pane
nmap <silent> <A-n> :vnew<CR>

" Move visually through long lines
nnoremap <C-j> gj
nnoremap <C-k> gk

" Easily number selected lines
" Select, then exit visual mode, then <C-n>
nnoremap <C-n> :'<,'>s/^/\=printf("%d. ", line(".") - line("'<") + 1)/g<enter>
