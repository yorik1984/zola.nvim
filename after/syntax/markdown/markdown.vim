" Vim syntax file
" Language: Markdown extended for Zola front matter
" Maintainer: Yurii Kulchevich <yorik1984@gmail.com>
" Version: 0.3.0
" Created: 06.09.2021
" Last Change: 17.04.2022

if exists('g:loaded_zola_markdown')
	finish
endif
let g:loaded_zola_markdown = 1

runtime after/syntax/markdown/zola.vim
