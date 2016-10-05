set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'mattn/emmet-vim'
Plugin 'digitaltoad/vim-pug'
Plugin 'Shougo/neosnippet-snippets'

Plugin 'ctrlpvim/ctrlp.vim'
let g:ctrlp_max_files = 100
let g:ctrlp_by_filename = 1
let g:ctrlp_working_path_mode = 'wa'
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

Plugin 'Shougo/neocomplete.vim'
let g:neocomplete#enable_auto_select = 1
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
let g:neocomplete#enable_at_startup = 1

Plugin 'Shougo/neosnippet.vim'
imap <C-c>     <Plug>(neosnippet_expand_or_jump)
smap <C-c>     <Plug>(neosnippet_expand_or_jump)
xmap <C-c>     <Plug>(neosnippet_expand_target)
if has('conceal')
    set conceallevel=2 concealcursor=niv
endif

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

syntax enable
let base16colorspace=256
set background=dark
colo base16-default-dark

set hlsearch
set incsearch
set nu
set ignorecase
set expandtab
set shiftwidth=4
set tabstop=4
set smartindent

au FileType asm set syn=nasm sw=8 ts=8 noexpandtab


let mapleader = "-"
nmap <leader>h :h 
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>w :wa<cr>
nnoremap <leader>db :bd<cr>

function! togglePaste()
    let &paste = !&paste
    echo paste
endfunction
nnoremap <leader>p :let &paste = !&paste<cr>

nnoremap <tab> :bNext<CR>
vnoremap <S-tab> :bprevious<CR>
nnoremap <leader>rv :source $MYVIMRC<cr>
nnoremap <space> <c-f>

nnoremap <C-l> <C-w>l
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <enter> zz

nnoremap <C-w>l <nop>
nnoremap <C-w>h <nop>
nnoremap <C-w>j <nop>
nnoremap <C-w>k <nop>

inoremap jk <esc>
inoremap <esc> <nop>
