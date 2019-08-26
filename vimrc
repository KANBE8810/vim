"                         __   _(_)_ __ ___  _ __ ___ 
"                         \ \ / / | '_ ` _ \| '__/ __|
"                          \ V /| | | | | | | | | (__ 
"                          \ _/ |_|_| |_| |_|_|  \___|
"
"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/home/kanbe/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/home/kanbe/.cache/dein')
  call dein#begin('/home/kanbe/.cache/dein')

  " Let dein manage dein
  " Required:
  call dein#add('/home/kanbe/.cache/dein/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here like this:
	call dein#add('jacoborus/tender.vim')
	call dein#add('vim-airline/vim-airline')
"You can specify revision/branch/tag.
" call dein#add('Shougo/deol.nvim')
" Required:
	call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif


"End dein Scripts-------------------------


"vim上の背景と文字の色を変更する
colorscheme tender 
"行番号を表示
set number  
"現在の行を強調表示
set cursorline
"行末の1文字先までカーソルが移動できる
set virtualedit=onemore
"不可視文字を可視化(タブが「▸-」と表示される)
set list listchars=tab:\▸\-
"行頭以外のTab文字の表示幅（スペースいくつ分）
set tabstop=2
" タイトルを表示
set title
" 行をまたいで移動
set whichwrap=b,s,h,l,<,>,[,],~

" leader 設定
let mapleader = "\<Space>"
"leader + w でファイルを保存する
nnoremap <Leader>w :w<CR>
"leader + q でファイルを終了する
nnoremap <Leader>q :q<CR>
"leader + t で新しいタブを作る
nnoremap <Leader>t :tabnew<CR> 
"leader + w + q でファイルを保存して終了する
nnoremap <Leader>wq :wq<CR>
"leader + g で次のtabに切り替え
nnoremap <Leader>g gt<CR> 

" vim-airline/vim-airline {{{
let g:airline_theme = 'temder'
set laststatus=2
" Show branch name
"let g:airline#extensions#branch#enabled = 1
" Show buffer's filename
"let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#tabline#fnamemod = ':t'
"let g:airline#extensions#tabline#buffer_nr_show = 1
"let g:airline#extensions#wordcount#enabled = 0
"let g:airline#extensions#default#layout = [['a', 'b', 'c'], ['x', 'y', 'z']]
"let g:airline_section_c = '%t'
"let g:airline_section_x = '%{&filetype}'
"let g:airline_section_z = '%3l:%2v %{airline#extensions#ale#get_warning()} %{airline#extensions#ale#get_error()}'
"let g:airline#extensions#ale#error_symbol = '✖'
"let g:airline#extensions#ale#warning_symbol = '▲'
"let g:airline#extensions#default#section_truncate_width = {}
" Check whitespace at end of line
"let g:airline#extensions#whitespace#enabled = 1
" }}}

