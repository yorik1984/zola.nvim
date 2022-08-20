" Vim syntax file
" Language: Rmarkdown extended for Zola front matter
" Maintainer: Yurii Kulchevich <yorik1984@gmail.com>
" Version: 0.4.0
" Created: 06.09.2021
" Last Change: 20.08.2022
" Usage: Add 'runtime after/syntax/rmarkdown/zola.vim' to your syntax-file

let b:current_syntax = ''
unlet b:current_syntax
syntax include @TOML syntax/toml.vim
syntax region tomlFrontMatter matchgroup=frontMatter start="\%^[ \t\n\r]*\_^[ \t]*+++[ \t]*$" end="^[ \t]*+++[ \t]*$" contains=@TOML keepend
hi link frontMatter Delimiter
syntax cluster rmdNonListItem add=tomlFrontMatter

let b:current_syntax = ''
unlet b:current_syntax
syntax include @Jinja syntax/jinja.vim

syntax region zolaObject start="{{" end="}}" contains=@Jinja keepend
syntax region zolaTag start="{%" end="%}" contains=@Jinja keepend

syntax cluster rmdNonListItem add=zolaObject
syntax cluster rmdNonListItem add=zolaTag
