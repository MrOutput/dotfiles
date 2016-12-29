if !exists("main_syntax")
  " quit when a syntax file was already loaded
  if exists("b:current_syntax")
    finish
  endif
  let main_syntax = 'c'
elseif exists("b:current_syntax") && b:current_syntax == "c"
  finish
endif


syn keyword keywords break do case else void return while const continue for switch default if static enum struct    int char float double short long

"punctuators { ( ) [ ] . ... ; , < > <= >= == != === !== + - * % ++ -- << >> >>> & | ! ~ && || ? : = += -= *= %= <<= >>= >>>= &= |= ^= => ** **= / /= }
syn match   number	       "\<\d\+\>"
syn match   operators '\(<\|>\|<=\|>=\|==\|!=\|+\|-\|\*\|%\|++\|--\|<<\|>>\|&\||\|\^\|!\|\~\|&&\|||\|=\|+=\|-=\|\*=\|%=\|>>=\|&=\||=\|\^=\|=>\|/\|/=\|?\|:\)'
" syn keyword types		
"syn keyword literals		
syn region  charliteral         start="'" end="'" 
syn region  string             start="\"" end="\""
syn match functionsAndMethods	"\w\+(\@="
syn keyword todo                TODO FIXME contained
syn match   linecomment      "\/\/.*" contains=todo
syn region  multilinecomment       start="/\*"  end="\*/" contains=todo
syn keyword  frequentORglobal   NULL EOF true false sizeof 
syn match   const      "\<\s\?[A-Z]\(_\|\u\|\d\)\+\>"

hi def link functionsAndMethods Function
hi def link string              String
hi def link charliteral         Number
hi def link todo                Todo
hi def link keywords            Keyword
" hi def link types               Keyword
hi def link operators           Conditional
hi def link comment             Comment
hi def link linecomment         Comment
hi def link multilinecomment    Comment
" hi def link literals            Number
hi def link frequentORglobal    Number
hi def link number              Number
hi def link const               Number

let b:current_syntax = "c"
if main_syntax == 'c'
  unlet main_syntax
endif
