syntax match MarkdownParagraph "\#"
syntax match MarkdownHeader "\(\#\s\)\@<=.\+"
syntax match MarkdownKeyword "`.\{-}`"
syntax match MarkdownLanguageSection "```"

hi MarkdownParagraph ctermfg=DarkRed
hi MarkdownHeader ctermfg=DarkGreen
hi MarkdownKeyword ctermfg=DarkGray
hi MarkdownLanguageSection ctermfg=DarkRed

call SyntaxRange#Include('```json', '```', 'json', 'MarkdownLanguageSection')
call SyntaxRange#Include('```yaml', '```', 'yaml', 'MarkdownLanguageSection')
call SyntaxRange#Include('```python', '```', 'python', 'MarkdownLanguageSection')
call SyntaxRange#Include('```c', '```', 'c', 'MarkdownLanguageSection')
call SyntaxRange#Include('```cpp', '```', 'cpp', 'MarkdownLanguageSection')
call SyntaxRange#Include('```go', '```', 'go', 'MarkdownLanguageSection')
