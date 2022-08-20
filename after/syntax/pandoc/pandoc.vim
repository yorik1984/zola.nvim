" Vim syntax file
" Language: Pandoc extended for Zola front matter
" Maintainer: Yurii Kulchevich <yorik1984@gmail.com>
" Version: 0.4.0
" Created: 06.09.2021
" Last Change: 20.08.2022

if exists('g:loaded_zola_pandoc')
	finish
endif
let g:loaded_zola_pandoc = 1

runtime after/syntax/pandoc/zola.vim
