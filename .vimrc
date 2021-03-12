syntax on

set noerrorbells
set tabstop=2 softtabstop=2
set shiftwidth=2
set expandtab
set smartindent
set nowrap
set smartcase
" TURNS LINE NUMBERING ON
set nu
set relativenumber
set incsearch
set statusline+=%{exists('g:loaded_fugitive')?fugitive#statusline():''}
set autoread
" trigger `autoread` when files changes on disk
autocmd FocusGained,BufEnter,CursorHold,CursorHoldI * if mode() != 'c' | checktime | endif
" ENABLE MOUSE USE IN ALL MODES
set mouse=a
" ENABLE SAVING OF TAB TITLES FOR SESSIONS 
set sessionoptions+=tabpages,globals

" Plugin here

" " ENABLES PLUGINS TO WORK
filetype plugin on

call plug#begin("~/.vim/plugged")

" Terminal in floating window
Plug 'voldikss/vim-floaterm'
" Automatic pane resizing
Plug 'camspiers/lens.vim'
" File explorer
Plug 'preservim/nerdtree'
" Discord
Plug 'hugolgst/vimsence'
" status bar
Plug 'shinchu/lightline-gruvbox.vim'
Plug 'itchyny/lightline.vim'
" Git helper
Plug 'tpope/vim-fugitive'
" Autocomplete
Plug 'neoclide/coc.nvim', { 'branch': 'release' }
" fuzzy finder
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
" Display error
Plug 'https://gitlab.com/hauleth/qfx.vim'
" Theme
Plug 'morhetz/gruvbox'
" Eslint
Plug 'dense-analysis/ale'
" Syntax Highlighter
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
" Snippets
Plug 'epilande/vim-es2015-snippets'
Plug 'epilande/vim-react-snippets'
Plug 'SirVer/ultisnips'
call plug#end()

let mapleader = " "

colorscheme gruvbox

"Eslint
let g:ale_fixers = {
 \ 'javascript': ['eslint']
 \ }

"let g:ale_fix_on_save = 1
"

" Use <C-l> for trigger snippet expand.
imap <C-l> <Plug>(coc-snippets-expand)

" Use <C-j> for select text for visual placeholder of snippet.
vmap <C-j> <Plug>(coc-snippets-select)

" Use <C-j> for jump to next placeholder, it's default of coc.nvim
let g:coc_snippet_next = '<c-j>'

" Use <C-k> for jump to previous placeholder, it's default of coc.nvim
let g:coc_snippet_prev = '<c-k>'

" Use <C-j> for both expand and jump (make expand higher priority.)
imap <C-j> <Plug>(coc-snippets-expand-jump)

" Use <leader>x for convert visual selected code to snippet
xmap <leader>x  <Plug>(coc-convert-snippet)

let g:lightline = {}
let g:lightline.colorscheme = 'gruvbox'

let g:vimsence_client_id = '439476230543245312'
let g:vimsence_small_text = 'NeoVim'
let g:vimsence_small_image = 'neovim'
let g:vimsence_editing_details = 'Summoning...'
let g:vimsence_editing_state = 'Casting Magic'
let g:vimsence_file_explorer_text = 'Lagi nyantuy'
let g:vimsence_file_explorer_details = 'Cari file'
let g:vimsence_custom_icons = {'filetype': 'iconname'}

""
" Key remap
""
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nmap <leader>gd <Plug>(coc-definition)
nmap <leader>gr <Plug>(coc-references)
nnoremap <C-p> :GFiles<CR>
nnoremap <leader><leader> :NERDTreeFind<CR>
nmap t :tabnew<CR>
nmap <leader>x :q<CR>
nmap H gT
nmap L gt
nmap <leader>gf :diffget //3<CR>
nmap <leader>gj :diffget //2<CR>
nnoremap <leader>p :FloatermNew<CR>

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

""""""""""""""""""""""""""""""
" VIM-FLOATERM
""""""""""""""""""""""""""""""

let g:floaterm_open_command = 'tabe'
