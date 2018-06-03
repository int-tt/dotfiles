set number 
set title 
set showmatch 
syntax on 
set tabstop=2 
set smartindent 
set paste
colorscheme molokai
set t_Co=256
set laststatus=2 
autocmd FileType * setlocal formatoptions-=ro
autocmd vimenter * NERDTre
set ignorecase 
set smartcase 
set wrapscan 

if has('vim_starting')
		  set nocompatible               " Be iMproved
		    " Required:
			   set runtimepath+=~/.vim/bundle/neobundle.vim/
			   endif
			
		    " Required:
			   call neobundle#begin(expand('~/.vim/bundle/'))


" " Required:
NeoBundleFetch 'Shougo/neobundle.vim'
NeoBundle 'Shougo/unite.vim' 
NeoBundle 'Shougo/neomru.vim' 
NeoBundle 'itchyny/lightline.vim'
NeoBundle 'fatih/vim-go'
NeoBundle 'vim-jp/vim-go-extra'
NeoBundle 'nathanaelkane/vim-indent-guides'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'mattn/emmet-vim'
NeoBundle 'plasticboy/vim-markdown'
NeoBundle 'kannokanno/previm'
NeoBundle 'tyru/open-browser.vim'

let g:user_emmet_leader_key='<c-e>'
let g:syntastic_mode_map = { 'mode': 'passive','active_filetypes': ['go'] }
let g:syntastic_go_checkers = ['go', 'golint']
let g:go_version_warning = 0
let g:lightline = { 'colorscheme': 'wombat', }

let g:indent_guides_enable_on_vim_startup = 1

map <C-n> :NERDTreeToggle<CR>
au BufRead,BufNewFile *.md set filetype=markdown

exe "set rtp+=".globpath($GOPATH, "src/github.com/nsf/gocode/vim")
call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
