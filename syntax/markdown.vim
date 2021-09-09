" Vim syntax file
" Language: Markdown extended for Zola front matter
" Maintainer: Yurii Kulchevich <yorik1984@gmail.com>
" Version: 0.2.0
" Created: 06.09.2021
" Last Change: 09.09.2021

if exists('g:zola_mkd_plugins_support')
    if g:zola_mkd_plugins_support == 1
        runtime after/syntax/markdown/zola.vim
    endif
endif

