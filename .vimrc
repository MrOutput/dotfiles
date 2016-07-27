set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'ctrlpvim/ctrlp.vim'
let g:ctrlp_working_path_mode = 'wa'
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

Plugin 'Shougo/neocomplete.vim'
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_smart_case = 1

Plugin 'Shougo/neosnippet.vim'
" Plugin key-mappings.
imap <C-c>     <Plug>(neosnippet_expand_or_jump)
smap <C-c>     <Plug>(neosnippet_expand_or_jump)
xmap <C-c>     <Plug>(neosnippet_expand_target)

imap <expr><TAB>
 \ pumvisible() ? "\<C-n>" :
 \ neosnippet#expandable_or_jumpable() ?
 \    "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

Plugin 'Shougo/neosnippet-snippets'
Plugin 'mattn/emmet-vim'
Plugin 'rust-lang/rust.vim'
Plugin 'majutsushi/tagbar'
nmap <f9> :TagbarToggle<cr>

Plugin 'digitaltoad/vim-pug'
Plugin 'stulzer/heroku-colorscheme'
Plugin 'altercation/vim-colors-solarized'
Plugin 'morhetz/gruvbox'
Plugin 'chriskempson/vim-tomorrow-theme'
Plugin 'vim-scripts/desertEx'
Plugin 'juanedi/predawn.vim'
Plugin 'endel/vim-github-colorscheme'

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
colo base16-eighties
" set background=dark
filetype plugin on
" set omnifunc=syntaxcomplete#Complete

set hlsearch
set incsearch
set nu
set mouse=a
set ignorecase
set expandtab
set shiftwidth=4
set tabstop=4
set autoindent
set smartindent
autocmd FileType html setlocal shiftwidth=4 tabstop=4
autocmd FileType jade setlocal shiftwidth=4 tabstop=4
autocmd FileType javascript setlocal expandtab shiftwidth=4 softtabstop=4
autocmd FileType asm setlocal shiftwidth=8 tabstop=8 noexpandtab

" highlight Pmenu ctermbg=0 ctermfg=3
" highlight PmenuSel ctermbg=3 ctermfg=0
" highlight Visual ctermbg=3 ctermfg=0
" set cursorline
" highlight CursorLine ctermbg=16
" highlight CursorLineNr ctermfg=10 ctermbg=8
" highlight TabLineSel ctermbg=8 ctermfg=2
" highlight TabLine ctermbg=2
" highlight TabLineFill ctermbg=2
" highlight Todo ctermbg=3 ctermfg=16

nmap <F12> :if exists("g:syntax_on") <Bar>
\   syntax off <Bar>
\ else <Bar>
\   syntax enable <Bar>
\ endif <CR>
nmap <F2> :wa<CR>
nmap <F3> :CtrlP<CR>
nmap <F7> :tabprev<CR>
nmap <F8> :tabnext<CR>
nmap <tab> :bNext<CR>
nmap <S-Tab> :bprevious<CR>
