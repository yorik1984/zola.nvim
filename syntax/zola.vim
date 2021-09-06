" Vim syntax file
" Language: Markdown extended for Zola front matter
" Maintainer: Yurii Kulchevich <yorik1984@gmail.com>
" Version: 0.1.0
" Created: 06.09.2021
" Last Change: 06.09.2021
" Usage: Add 'runtime syntax/zola.vim' to your syntax-file

let b:current_syntax = ''
unlet b:current_syntax
syntax include @TOML syntax/toml.vim

let b:current_syntax = ''
unlet b:current_syntax
syntax include @Jinja syntax/jinja.vim

syntax region tomlFrontMatter matchgroup=frontMatter start="\%^[ \t\n\r]*\_^[ \t]*+++[ \t]*$" end="^[ \t]*+++[ \t]*$" contains=@TOML keepend
syntax region zolaObject start="{{" end="}}" contains=@Jinja keepend
syntax region zolaTag start="{%" end="%}" contains=@Jinja keepend

hi link frontMatter markdownH1

syntax cluster mkdNonListItem add=tomlFrontMatter
syntax cluster mkdNonListItem add=zolaObject
syntax cluster mkdNonListItem add=zolaTag

