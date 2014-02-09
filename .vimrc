set nocompatible
filetype off

if has('vim_starting')
	set runtimepath+=~/.vim/neobundle.vim.git
	call neobundle#rc(expand('~/.vim/.bundle'))
endif

NeoBundle 'git://github.com/tpope/vim-surround.git'
NeoBundle 'git://github.com/tpope/vim-repeat.git'
NeoBundle 'git://github.com/Shougo/neocomplcache.git'
NeoBundle 'git://github.com/Shougo/unite.vim.git'
NeoBundle 'git://github.com/mattn/zencoding-vim.git'
NeoBundle 'git://github.com/motemen/git-vim.git'
NeoBundle 'git://github.com/scrooloose/nerdtree.git'
NeoBundle 'git://github.com/majutsushi/tagbar.git'
NeoBundle 'git://github.com/nanotech/jellybeans.vim'
NeoBundle 'HybridText'

NeoBundle 'git://github.com/fuenor/im_control.vim'
"NeoBundle 'im_control', {'type' : 'nosync', 'base' : '~/.vim/.bundle/manual'}

filetype plugin indent on

set number
set showmode
set title
set ruler
set list
set listchars=tab:>\ ,extends:<
set laststatus=2

set autoindent
set smartindent
"set expandtab
set smarttab
set tabstop=4
set shiftwidth=4
set showmatch
set wildmenu
set clipboard=unnamed
set autoread
set hidden
set showcmd
set backspace=indent,eol,start
set browsedir=buffer
set incsearch
set ignorecase
set smartcase
set whichwrap=b,s,h,l,<,>,[,]
set nowrapscan
set cmdheight=2
set wrap
set linebreak
set nolist
highlight ZenkakuSpace cterm=underline ctermfg=lightblue guibg=darkgray
match ZenkakuSpace /　/

augroup InsertHook
autocmd!
autocmd InsertEnter * highlight StatusLine guifg=#ccdc90 guibg=#2E4340
autocmd InsertLeave * highlight StatusLine guifg=#2E4340 guibg=#ccdc90
augroup END


:set encoding=utf-8
:set fileencodings=iso-2022-jp,euc-jp,sjis,utf-8
:set fileformats=unix,dos,mac

nnoremap <silent> fb :<C-u>Unite buffer<CR>
nnoremap <silent> ff :<C-u>UniteWithBufferDir -buffer-name=dotfiles file<CR>
nnoremap <silent> fr :<C-u>Unite -buffer-name=register register<CR>
nnoremap <silent> fm :<C-u>Unite file_mru<CR>
nnoremap <silent> C :%!astyle -pST<CR>
let IM_CtrlMode = 4
inoremap <silent> <C-j> <C-^><C-r>=IMState('FixMode')<CR>lBufLocalMode = 1

noremap <Leader><Leader> :up<CR>
"lBufLocalMode = 1
nnoremap <Space> jzz
nnoremap <S-Space> kzz
noremap <CR> o<ESC>

nnoremap j gj
nnoremap k gk

if has('mac')
	let g:tagbar_ctags_bin='/usr/local/bin/ctags'
	nmap <C-n> :NERDTree<CR>
	nnoremap <silent> <C-s> :TagbarToggle<CR>
	"nmap <C-S-b> :make<CR>
	:set noimdisableactivate
endif
"autocmd BufEnter * if &filetype === "" | setlocal ft=hybrid | endif

"au BufNewFile,BufRead *.hs	set nowrap tabstop=2 shiftwidth=2 expandtab
au BufNewFile,BufRead *.tex	set spell
