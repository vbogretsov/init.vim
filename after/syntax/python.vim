" " syn match   myPythonArgs        /\w\+,\?/ contained skipwhite display transparent
" syn region  myPythonFuncParens  matchgroup=myPythonFuncParens start=/(/ end=/)\@=/ skip=/,/ contains=myPythonArgs contained display
" syn region  myPythonFunction    matchgroup=myPythonFunction start=/\(def\s\+\)\@<=\h\w\+\s*/ end=/:/ contains=myPythonFuncParens transparent display

" syn keyword myPythonBoolean     False None True
" syn keyword myPythonKeyword     def class return lambda
" syn keyword myPythonInclude     as
" syn match   myPythonOperator    "="
" syn match   myPythonClass       "\(class\s\+\)\@<=\h\+"
" syn match   myPythonParens      "\[\|\]\|(\|)\|{\|}"
" " syn match   myPythonFunction    "\(def\s\+\)\@<=\h\+"
" syn region  myPythonDocString   start=/"""/ end=/"""/
" syn region  myPythonString      start=/\(=\s\+\)\@<="""/ end=/"""/

" " syn match   myPythonArgs        "\h\w\+\@=,\?"

" " def\s\+\h\w\+(\@= -- start of function
" " syn match myPythonError        "\#Error"

" " syn match   pythonFunction      "\%(\%(def\s\|class\s\|@\)\s*\)\@<=\h\%(\w\|\.\)*" contained nextgroup=pythonVars
" " syn region  pythonVars          start="(" end=")" contained contains=pythonParameters transparent keepend
" " syn match   pythonParameters    "[^,]*" contained skipwhite
" " syn match myPythonArg           "\h([\w_]\+)"
" " syn region  myPythonArg         start="(" end=")" contains=myPythonParams transparent keepend display
" " syn match   myPythonParams      "\h\w\+" contained skipwhite


" " match Parens "\[\|\]\|(\|)\|{\|}"
" " match Quotes "'\|\"""

" hi def link myPythonBoolean     Boolean
" hi def link myPythonKeyword     Keyword
" hi def link pythonStatement     Keyword
" hi def link myPythonDef         Keyword
" hi def link myPythonInclude     Include
" hi def link myPythonOperator    Operator
" hi def link myPythonParams      Argument
" hi def link myPythonDocString   Comment
" hi def link myPythonString      String
" hi def link myPythonFunction    Function
" hi def link myPythonParens      Parens
" hi def link myPythonFuncParens  Parens
" hi def link myPythonArgs        Argument
" hi def link myPythonClass       Type

" " hi def link myPythonQuotes      Quotes


" let b:current_syntax = "python"