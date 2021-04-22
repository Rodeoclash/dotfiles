call plug#begin('~/.vim/plugged')
Plug 'editorconfig/editorconfig-vim'
Plug 'elixir-editors/vim-elixir'
Plug 'hashivim/vim-terraform'
Plug 'jparise/vim-graphql'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'jwalton512/vim-blade'
Plug 'leafgarland/typescript-vim'
Plug 'mhinz/vim-signify'
Plug 'morhetz/gruvbox'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'ntpeters/vim-better-whitespace'
Plug 'pangloss/vim-javascript'
Plug 'posva/vim-vue'
Plug 'scrooloose/nerdtree'
call plug#end()

nnoremap <Leader>f :NERDTreeToggle<Enter>

let NERDTreeDirArrows = 1
let NERDTreeMinimalUI = 1
let NERDTreeQuitOnOpen = 0
let NERDTreeShowHidden=1
let g:NERDTreeWinSize=50
let g:ale_sign_column_always = 1
let g:gruvbox_italic=1

filetype plugin indent on

set backupcopy=yes
set directory=$HOME/.vim/swapfiles/
set expandtab
set hlsearch
set list
set listchars=tab:>-
set nowrap
set nu rnu
set number relativenumber
set shiftwidth=2
set softtabstop=2
set tabstop=2
set termguicolors
set background=dark

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

colorscheme gruvbox

autocmd Filetype php setlocal ts=4 sw=4 sts=0 expandtab

" Fuzzy file finder
let g:fzf_action = {
      \ 'ctrl-s': 'split',
      \ 'ctrl-v': 'vsplit'
      \ }
nnoremap <c-p> :FZF<cr>
augroup fzf
  autocmd!
  autocmd! FileType fzf
  autocmd  FileType fzf set laststatus=0 noshowmode noruler
    \| autocmd BufLeave <buffer> set laststatus=2 showmode ruler
augroup END

" Don't close NERDTree when opening first file
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

" Speeds up syntax highlighting
set re=1

set belloff=all
