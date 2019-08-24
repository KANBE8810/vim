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
	call dein#add('Shougo/neosnippet.vim')
	call dein#add('Shougo/neosnippet-snippets')
	call dein#add('jacoborus/tender.vim')
	call dein#add('vim-airline/vim-airline')
	call dein#add('simeji/winresizer')
	call dein#add('vim-airline/vim-airline-themes')
	call dein#add('ryanoasis/vim-devicons')
	call dein#add('w0rp/ale')
	call dein#add('thinca/vim-quickrun')
" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif
	"call dein#add('Shougo/neosnippet.vim')
	"call dein#add('Shougo/neosnippet-snippets')
	"call dein#add('jacoborus/tender.vim')
	"call dein#add('vim-airline/vim-airline')
	"call dein#add('simeji/winresizer')
	"call dein#add('vim-airline/vim-airline')
	"call dein#add('vim-airline/vim-airline-themes')
	"call dein#add('ryanoasis/vim-devicons')
	"call dein#add('w0rp/ale')
	"call dein#add('thinca/vim-quickrun')
"You can specify revision/branch/tag.
" call dein#add('Shougo/deol.nvim')

	" w0rp/ale {{{
let g:ale_lint_on_text_changed = 0
let g:ale_sign_error = '✖'
let g:ale_sign_warning = '▲'
let g:airline#extensions#ale#open_lnum_symbol = '('
let g:airline#extensions#ale#close_lnum_symbol = ')'
let g:ale_echo_msg_format = '[%linter%]%code: %%s'
let g:ale_python_pylint_change_directory = 0
highlight link ALEErrorSign Tag
highlight link ALEWarningSign StorageClass
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)
let g:ale_linters = {
      \ 'ruby': ['rubocop', 'ruby', 'solargraph']
      \ }
let g:ale_fixers = {
      \ 'javascript': ['eslint']
      \ }
" }}}

" vim-airline/vim-airline {{{
let g:airline_theme = 'wombat'
set laststatus=2
" Show branch name
let g:airline#extensions#branch#enabled = 1
" Show buffer's filename
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#wordcount#enabled = 0
let g:airline#extensions#default#layout = [['a', 'b', 'c'], ['x', 'y', 'z']]
let g:airline_section_c = '%t'
let g:airline_section_x = '%{&filetype}'
let g:airline_section_z = '%3l:%2v %{airline#extensions#ale#get_warning()} %{airline#extensions#ale#get_error()}'
let g:airline#extensions#ale#error_symbol = '✖'
let g:airline#extensions#ale#warning_symbol = '▲'
let g:airline#extensions#default#section_truncate_width = {}
" Check whitespace at end of line
let g:airline#extensions#whitespace#enabled = 1
" }}}

" Required:
	call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable


"You can specify revision/branch/tag.
" call dein#add('Shougo/deol.nvim')

"End dein Scripts-------------------------


"行番号を表示
set number  
"vim上の背景と文字の色を変更する
"set background=dark
colorscheme tender 
"現在の行を強調表示
set cursorline
"行末の1文字先までカーソルが移動できる
set virtualedit=onemore
"不可視文字を可視化(タブが「▸-」と表示される)
set list listchars=tab:\▸\-
"行頭以外のTab文字の表示幅（スペースいくつ分）
set tabstop=2
" コメントの色を緑
hi Comment ctermfg=2
" yでコピーした時にクリップボードに入る
set guioptions+=a
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

"winresizer 解説 :Ctrl＋e でwinresizerを起動　

