" Vim syntax file
" Language: markdown extended for Zola front matter
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


syntax region tomlFrontMatter matchgroup=frontMatter start="\%^[ \t\n\r]*\_^[ \t]*+++[ \t]*$" end="^[ \t]*+++[ \t]*$" contains=@TOML keepend

hi link frontMatter SpecialComment

