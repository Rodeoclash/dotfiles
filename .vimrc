call plug#begin('~/.vim/plugged')
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'beanworks/vim-phpfmt'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'hashivim/vim-terraform'
Plug 'jwalton512/vim-blade'
Plug 'ntpeters/vim-better-whitespace'
Plug 'pangloss/vim-javascript'
Plug 'posva/vim-vue'
Plug 'scrooloose/nerdtree'
call plug#end()

nnoremap <Leader>f :NERDTreeToggle<Enter>
let NERDTreeQuitOnOpen = 0
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

:set number relativenumber
:set nu rnu

:set list
set listchars=tab:>-

filetype plugin indent on
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

set backupcopy=yes
set directory=$HOME/.vim/swapfiles/

set hlsearch

set nowrap

autocmd Filetype php setlocal ts=4 sw=4 sts=0 expandtab
