" Vim syntax file
" Language: Markdown extended for Zola front matter
" Maintainer: Yurii Kulchevich <yorik1984@gmail.com>
" Version: 0.4.0
" Created: 06.09.2021
" Last Change: 01.02.2023

unlet b:current_syntax
syntax include @TOML syntax/toml.vim

syntax region tomlFrontMatter matchgroup=frontMatter start="\%^[ \t\n\r]*\_^[ \t]*+++[ \t]*$" end="^[ \t]*+++[ \t]*$" contains=@TOML keepend
hi link frontMatter Delimiter
syntax cluster mkdNonListItem add=tomlFrontMatter

unlet b:current_syntax
syntax include @Jinja syntax/jinja.vim

syntax region zolaObject start="{{" end="}}" contains=@Jinja keepend
syntax region zolaTag start="{%" end="%}" contains=@Jinja keepend

syntax cluster mkdNonListItem add=zolaObject
syntax cluster mkdNonListItem add=zolaTag
