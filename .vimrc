syntax on

set noerrorbells
set tabstop=2 softtabstop=2
set shiftwidth=2
set expandtab
set smartindent
set nowrap
set smartcase
set nu
set relativenumber
set incsearch

" Plugin here
call plug#begin("~/.vim/plugged")
Plug 'preservim/nerdtree'
Plug 'hugolgst/vimsence'
Plug 'shinchu/lightline-gruvbox.vim'
Plug 'tpope/vim-fugitive'
Plug 'neoclide/coc.nvim', { 'branch': 'release' }
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'itchyny/lightline.vim'
Plug 'junegunn/fzf.vim'
Plug 'https://gitlab.com/hauleth/qfx.vim'
Plug 'morhetz/gruvbox'
Plug 'dense-analysis/ale'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
call plug#end()

let mapleader = " "

colorscheme gruvbox

"Eslint
let g:ale_fixers = {
 \ 'javascript': ['eslint']
 \ }

"let g:ale_fix_on_save = 1

let g:lightline = {}
let g:lightline.colorscheme = 'gruvbox'

let g:vimsence_client_id = '439476230543245312'
let g:vimsence_small_text = 'NeoVim'
let g:vimsence_small_image = 'neovim'
let g:vimsence_editing_details = 'Editing: {}'
let g:vimsence_editing_state = 'Working on: {}'
let g:vimsence_file_explorer_text = 'In NERDTree'
let g:vimsence_file_explorer_details = 'Looking for files'

nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nmap <leader>gd <Plug>(coc-definition)
nmap <leader>gr <Plug>(coc-references)
nnoremap <C-p> :GFiles<CR>
nnoremap <leader><leader> :NERDTreeToggle<CR>
nmap t :tabnew<CR>
nmap <leader>x :q<CR>
nmap J gT
nmap K gt

