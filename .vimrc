syntax enable
colo base16-default
set background=dark
filetype plugin on
set omnifunc=syntaxcomplete#Complete

set hlsearch
set incsearch
set nu
set ignorecase
set expandtab
set shiftwidth=4
set tabstop=4
set autoindent
set smartindent
autocmd FileType html setlocal shiftwidth=4 tabstop=4
autocmd FileType javascript setlocal expandtab shiftwidth=8 softtabstop=8

function! Smart_TabComplete()
  let line = getline('.')                         " current line

  let substr = strpart(line, -1, col('.')+1)      " from the start of the current
                                                  " line to one character right
                                                  " of the cursor
  let substr = matchstr(substr, "[^ \t]*$")       " word till cursor
  if (strlen(substr)==0)                          " nothing to match on empty string
    return "\<tab>"
  endif
  let has_period = match(substr, '\.') != -1      " position of period, if any
  let has_slash = match(substr, '\/') != -1       " position of slash, if any
  if (!has_period && !has_slash)
    return "\<C-X>\<C-P>"                         " existing text matching
  elseif ( has_slash )
    return "\<C-X>\<C-F>"                         " file matching
  else
    return "\<C-X>\<C-O>"                         " plugin matching
  endif
endfunction

inoremap <tab> <c-r>=Smart_TabComplete()<CR>
nmap <F2> :wa<CR>
nmap <tab> :bNext<CR>
