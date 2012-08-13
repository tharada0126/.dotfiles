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
highlight ZenkakuSpace cterm=underline ctermfg=lightblue guibg=darkgray
match ZenkakuSpace /　/

augroup InsertHook
autocmd!
autocmd InsertEnter * highlight StatusLine guifg=#ccdc90 guibg=#2E4340
autocmd InsertLeave * highlight StatusLine guifg=#2E4340 guibg=#ccdc90
augroup END

"set visualbell t_vb=

:set encoding=utf-8
:set fileencodings=iso-2022-jp,euc-jp,sjis,utf-8
:set fileformats=unix,dos,mac

noremap <Leader><Leader> :up<CR>
nnoremap <Space> jzz
nnoremap <S-Space> kzz
noremap <CR> o<ESC>

nnoremap j gj
nnoremap k gk
