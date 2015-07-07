set number "行番号を表示する
set title "編集中のファイル名を表示
set showmatch "括弧入力時の対応する括弧を表示
syntax on "コードの色分け
set tabstop=4 "インデントをスペース4つ分に設定
set smartindent "オートインデント
set paste
colorscheme molokai
set t_Co=256
"改行でコメントアウトしない
autocmd FileType * setlocal formatoptions-=ro

"#####検索設定#####
set ignorecase "大文字/小文字の区別なく検索する
set smartcase "検索文字列に大文字が含まれている場合は区別して検索する
set wrapscan "検索時に最後まで行ったら最初に戻る

"プラグインのセットアップ

if has('vim_starting')
		  set nocompatible               " Be iMproved
		    " Required:
			   set runtimepath+=~/.vim/bundle/neobundle.vim/
			   endif
			
		    " Required:
			   call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
" " Required:
NeoBundleFetch 'Shougo/neobundle.vim'
NeoBundle 'Shougo/unite.vim' "ファイルオープンを便利に
NeoBundle 'Shougo/neomru.vim' "最近使ったファイルを表示
" インデント見やすくする
 NeoBundle 'nathanaelkane/vim-indent-guides'
 " オン
let g:indent_guides_enable_on_vim_startup = 1

call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
