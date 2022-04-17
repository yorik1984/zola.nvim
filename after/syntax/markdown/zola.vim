" Vim syntax file
" Language: Markdown extended for Zola front matter
" Maintainer: Yurii Kulchevich <yorik1984@gmail.com>
" Version: 0.3.0
" Created: 06.09.2021
" Last Change: 17.04.2022
" Usage: Add 'runtime after/syntax/markdown/zola.vim' to your syntax-file

" prefer formatting with vim-markdown or nvim-markdown plugins
" add own setting without this plugins
if !exists('g:vim_markdown_toml_frontmatter')
    let b:current_syntax = ''
    unlet b:current_syntax
    syntax include @TOML syntax/toml.vim
    syntax region tomlFrontMatter matchgroup=frontMatter start="\%^[ \t\n\r]*\_^[ \t]*+++[ \t]*$" end="^[ \t]*+++[ \t]*$" contains=@TOML keepend
    hi link frontMatter markdownHeadingDelimiter
    syntax cluster mkdNonListItem add=tomlFrontMatter
endif

let b:current_syntax = ''
unlet b:current_syntax
syntax include @Jinja syntax/jinja.vim

syntax region zolaObject start="{{" end="}}" contains=@Jinja keepend
syntax region zolaTag start="{%" end="%}" contains=@Jinja keepend

syntax cluster mkdNonListItem add=zolaObject
syntax cluster mkdNonListItem add=zolaTag
