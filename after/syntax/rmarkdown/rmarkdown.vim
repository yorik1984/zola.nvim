" Vim syntax file
" Language: Rmarkdown extended for Zola front matter
" Maintainer: Yurii Kulchevich <yorik1984@gmail.com>
" Version: 0.4.0
" Created: 06.09.2021
" Last Change: 20.08.2022

if exists('g:loaded_zola_rmarkdown')
	finish
endif
let g:loaded_zola_rmarkdown = 1

runtime after/syntax/markdown/zola.vim
