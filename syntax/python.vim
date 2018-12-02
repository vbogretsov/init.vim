" pythonNumber,pythonHexNumber,pythonOctNumber,pythonBinNumber,pythonFloat

syn keyword pythonKeyword       break continue del return pass yield global
syn keyword pythonKeyword       assert lambda with async await from def class
syn keyword pythonDef           def nextgroup=pythonFuncDef skipwhite
syn keyword pythonClass         class nextgroup=pythonClassDef skipwhite
syn keyword pythonRepeat        for while
syn keyword pythonConditional   if else elif
syn keyword pythonException     try except finally
syn keyword pythonOperator      in and or not
syn keyword pythonInclude       import as
syn keyword pythonBoolean       True False
syn keyword pythonNone          None
syn keyword pythonSelf          self
syn keyword pythonCls           cls
syn keyword pythonTodo          TODO NOTE FIXME containedin=pythonComment,pythonDocString
syn match   pythonFuncCall      /\h\w*/ nextgroup=pyxthonFuncCallArgs
syn region  pythonFuncCallArgs  start=/(/ end=/)/ contained contains=ALL
syn match   pythonKwArgsList    /\w\+\(=.\+\)\@=/ containedin=pythonFuncCallArgs
syn match   pythonClassDef      /\h\w*/ contained nextgroup=pythonClassDefArgs
syn region  pythonClassDefArgs  start=/(/ end=/)/ contained contains=pythonCalssArgsList
syn match   pythonCalssArgsList /\h\w*/ contained
syn match   pythonFuncDef       /\h\w*/ contained nextgroup=pythonFuncDefArgs
syn region  pythonFuncDefArgs   start=/(/ end=/)/ contained contains=pythonArgsList
syn match   pythonArgsList      /\h\w*/ contained
syn match   pythonPunctuation   /,\|\.\|!\|?\|+\|-\|\*\|\/\|=\|<\|>/
syn match   pythonDecoratorAt   /@\(\h\w*\)\@=/
syn region  pythonString        matchgroup=pythonQuotes start=+'+ skip=+\\\\\|\\'\|\\$+ excludenl end=+'+ end=+$+ keepend
syn region  pythonString        matchgroup=pythonQuotes start=+"+ skip=+\\\\\|\\"\|\\$+ excludenl end=+"+ end=+$+ keepend
syn region  pythonString        matchgroup=pythonQuotes start=+'''+ skip=+\\'+ end=+'''+ keepend
syn region  pythonString        matchgroup=pythonQuotes start=+"""+ skip=+\\"+ end=+"""+ keepend
syn keyword pythonRaw           r nextgroup=pythonRawString
syn region  pythonRawString     matchgroup=pythonQuotes start=+"+ skip=+\\\\\|\\"\|\\$+ excludenl contained end=+"+ end=+$+ keepend
syn region  pythonRawString     matchgroup=pythonQuotes start=+'+ skip=+\\\\\|\\'\|\\$+ excludenl contained end=+'+ end=+$+ keepend
syn region  pythonComment       start=+^\s*"""+ end=+"""+ keepend
syn region  pythonComment       start=+#+ end=+$+ keepend
syn match   pythonFormat        /{[^\s]\+}/ containedin=pythonString
syn match   pythonFormat        /%s/ containedin=pythonString
syn match   pythonFormat        /%d/ containedin=pythonString
syn match   pythonDecorator     /@\@<=\h\w*/
syn match   pythonParens        /\[\|\]\|(\|)\|{\|}/

syn match   pythonHexNumber     /\<0[xX][_0-9a-fA-F]*\x\>/ display
syn match   pythonOctNumber     /\<0[oO][_0-7]*\o\>/ display
syn match   pythonBinNumber     /\<0[bB][_01]*[01]\>/ display

syn match   pythonNumber        /\<\d\>/ display
syn match   pythonNumber        /\<[1-9][_0-9]*\d\>/ display
syn match   pythonNumber        /\<\d[jJ]\>/ display
syn match   pythonNumber        /\<[1-9][_0-9]*\d[jJ]\>/ display

syn match   pythonFloat         /\.\d\%([_0-9]*\d\)\=\%([eE][+-]\=\d\%([_0-9]*\d\)\=\)\=[jJ]\=\>/ display
syn match   pythonFloat         /\<\d\%([_0-9]*\d\)\=[eE][+-]\=\d\%([_0-9]*\d\)\=[jJ]\=\>/ display
syn match   pythonFloat         /\<\d\%([_0-9]*\d\)\=\.\d\%([_0-9]*\d\)\=\%([eE][+-]\=\d\%([_0-9]*\d\)\=\)\=[jJ]\=/ display

hi def link pythonKeyword       Keyword
hi def link pythonDef           Keyword
hi def link pythonClass         Keyword
hi def link pythonInclude       Include
hi def link pythonRepeat        Repeat
hi def link pythonConditional   Conditional
hi def link pythonException     Exception
hi def link pythonDecoratorAt   Operator
hi def link pythonDecorator     Function
hi def link pythonFuncDef       Function
hi def link pythonArgsList      Argument
hi def link pythonKwArgsList    Argument
hi def link pythonFormat        Argument
hi def link pythonOperator      Operator
hi def link pythonPunctuation   Operator
hi def link pythonBoolean       Boolean
hi def link pythonNone          Boolean
hi def link pythonClassDefArgs  Parens
hi def link pythonFuncDefArgs   Parens
hi def link pythonParens        Parens
hi def link pythonDocString     Comment
hi def link pythonComment       Comment
hi def link pythonString        String
hi def link pythonQuotes        Quotes
hi def link pythonClassDef      Type
hi def link pythonCalssArgsList BaseClass
hi def link pythonRaw           Keyword
hi def link pythonRawString     Operator
hi def link pythonSelf          Special
hi def link pythonCls           Special
hi def link pythonFloat         Float
hi def link pythonBinNumber     Number
hi def link pythonOctNumber     Number
hi def link pythonHexNumber     Number
hi def link pythonNumber        Number
hi def link pythonTodo          Todo

let b:current_syntax = "python"