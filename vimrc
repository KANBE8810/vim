"
"　　　　　　　                         　　　　 　 /i　　 ,ﾍ
"　　　　　　 　 　 　 　                         /:::|　 / ::l
"　　                          　　　　　　　　　 /::　:|,〃　::|
"　　　　　　　　　                           　　/,--､,. --、 ヽ
"　　　　　　　                          　　　 ,ｌ/ ∩　∩　ヽ ＼
"　　　　　　                          　　　　/.{　　 　 　 　 }　ヽ
"　                           　　　　　　　 　 ﾆ'' 　‘　‘　　 ﾆﾆ　〉
"　　　　　　                            　 　 　 "ゝヽ￣ ﾌ　,ﾉ,.く＾
"　　　　　　　                           　　　 ノ ﾞ　￣￣　'"　 ヽ
"　　　　　　　                          　　　(／i::　　　　　:::;ｉヽ )
"　　　　　　　　　　                           　 {::　　　　　:::;}
"　　　　　　　　　　 　                          ヽ 　.........　 ｲ 
"　　　　　　　　 　                              　 　 し′| ::| し′
"　　　　　　　　　　　　　　                          　 |::|
"　　　　　　　　 　                         　 　 　 　 |::|
"　　　　　　　　　　　　                         　　　　|::|
"　　__   _(_)_ __ ___  _ __ ___ 　　　　　　　　  　 　   |::|
"　 \ \ / / | '_ ` _ \| '__/ __|                           |::|
"    \ V /| | | | | | | | | (__　　　　　    　　   　  　 |:::|
"　   \_/ |_|_| |_| |_|_|  \___|                          |:::|
"　 　 　 　 　 　 　 　 　 　                            |:::|
"　　　　　　　　　                          　　  　　　 し'"
"
"
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
	call dein#add('simeji/winresizer')
"	call dein#add('')
"	call dein#add('')
"	call dein#add('')
"	call dein#add('')


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
"改行時に自動でインテンド
set smartindent
"対応するかっこを強調
set showmatch
"コマンド候補の表示、補完
set wildmenu
"クリップボードの有効化
set guioptions+=a
"検索結果のハイライト
set hlsearch
"コードにハイライト
syntax on
"バックスペースの有効化
set backspace=indent,eol,start


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
"カーソル下の単語をハイライトする　space2回
nnoremap <silent> <Space><Space> "zyiw:let @/ = '\<' . @z . '\>'<CR>:set hlsearch<CR>
"ビジュアルモードでもハイライト置換
xnoremap <silent> <Space> mz:call <SID>set_vsearch()<CR>:set hlsearch<CR>`z
xnoremap * :<C-u>call <SID>set_vsearch()<CR>/<C-r>/<CR>
xmap # <Space>:%s/<C-r>///g<Left><Left>

function! s:set_vsearch()
  silent normal gv"zy
  let @/ = '\V' . substitute(escape(@z, '/\'), '\n', '\\n', 'g')
endfunction
"上下に空行を挿入する　shift+enterで下　shift+ctrl+enterで上
imap <S-CR> <End><CR>
imap <C-S-CR> <Up><End><CR>
nnoremap <S-CR> mzo<ESC>`z
nnoremap <C-S-CR> mzO<ESC>`z
" 行を移動 ctrl+Up or Dn
vnoremap <C-Up> "zx<Up>"zP`[V`]
vnoremap <C-Down> "zx"zp`[V`]
" 複数行を移動 vモードで選択してctrl+UP or Dn
nnoremap <C-Up> "zdd<Up>"zP
nnoremap <C-Down> "zdd"zp


" vim-airline/vim-airline {{{
let g:airline_theme = 'tender'
set laststatus=2
" Show branch name
let g:airline#extensions#branch#enabled = 1
" }}}

