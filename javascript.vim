" Guide from ECMASCRIPT 2016 Section 11 Syntax
" http://www.ecma-international.org/ecma-262/7.0/#sec-unicode-format-control-characters

if !exists("main_syntax")
  " quit when a syntax file was already loaded
  if exists("b:current_syntax")
    finish
  endif
  let main_syntax = 'javascript'
elseif exists("b:current_syntax") && b:current_syntax == "javascript"
  finish
endif


syn keyword keywords break do in typeof case else instanceof var catch export new void class extends return while const finally super with continue for switch yield debugger function this default if throw delete import try let yield static arguments

"punctuators { ( ) [ ] . ... ; , < > <= >= == != === !== + - * % ++ -- << >> >>> & | ! ~ && || ? : = += -= *= %= <<= >>= >>>= &= |= ^= => ** **= / /= }
syn match   number	       "\<\d\+\>"
syn match   operators '\(<\|>\|<=\|>=\|==\|!=\|===\|!==\|+\|-\|\*\|%\|++\|--\|<<\|>>\|>>>\|&\||\|\^\|!\|\~\|&&\|||\|=\|+=\|-=\|\*=\|%=\|<<=\|>>=\|>>>=\|&=\||=\|\^=\|=>\|\*\*\|\*\*=\|/\|/=\|?\|:\|\.\.\.\)'

syn keyword types		Array ArrayBuffer Boolean Date decodeURI encodeURI encodeURIComponent Error eval EvalError Float32Array Float64Array Function Int8Array Int16Array Int32Array isFinite isNan JSON Map Math Number Object parseFloat parseInt Promise Proxy RangeError ReferenceError Reflect RegExp Set String Symbol SyntaxError TypeError Uint8Array Uint8ClampedArray Uint16Array Uint32Array URIError WeakMap WeakSet

syn keyword literals		null true false undefined
syn region  sstring             start="'" end="'" 
syn region  dstring             start="\"" end="\""
syn region  templstring       start="`"  end="`" contains=template
syn region  template       start="${"  end="}" contained contains=templateExpression
syn match templateExpression "\(\${\)\@<=.\{-}}\@=" contained contains=types,operators,number,const,regex,frequentORglobal,literals,keywords,functionsAndMethods,dstring,sstring

syn match functionsAndMethods	"\w\+(\@="

syn keyword todo                TODO contained
syn match   linecomment      "\/\/.*" contains=todo
syn region  multilinecomment       start="/\*"  end="\*/" contains=todo
syn keyword  frequentORglobal       length prototype document event window console global exports module process require __dirname __filename
syn match   const      "\<\s\?[A-Z]\(_\|\u\|\d\)\+\>"

"taken from org
syn region  regex     start=+/[^/*]+me=e-1 skip=+\\\\\|\\/+ end=+/[gim]\{0,2\}\s*$+ end=+/[gim]\{0,2\}\s*[;.,)\]}]+me=e-1 contains=@htmlPreproc oneline


hi def link types               Type
hi def link functionsAndMethods Function
hi def link dstring              String
hi def link sstring              String
hi def link templstring         String
hi def link template            Macro
hi def link templateExpression            None
hi def link todo                Todo
hi def link keywords            Keyword
hi def link operators           Keyword
hi def link comment             Comment
hi def link linecomment         Comment
hi def link multilinecomment    Comment
hi def link literals            Number
hi def link regex               Number
hi def link frequentORglobal    Number
hi def link number              Number
hi def link const               Number

let b:current_syntax = "javascript"
if main_syntax == 'javascript'
  unlet main_syntax
endif
