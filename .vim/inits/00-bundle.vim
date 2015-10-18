set nocompatible
filetype off

if has('vim_starting')
    set runtimepath+=~/.vim/bundle/neobundle.vim
    call neobundle#begin(expand('~/.vim/bundle/'))
endif

" NeoBundle
NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'itchyny/lightline.vim'
NeoBundle 'Align'
NeoBundle 'tpope/vim-surround'
NeoBundle 'smartword'
NeoBundle 'thinca/vim-quickrun'

NeoBundle 'Shougo/neomru.vim', {'depends' : 'Shougo/unite.vim'}
NeoBundle 'Shougo/vimproc.vim', {
      \ 'build' : {
      \     'windows' : 'tools\\update-dll-mingw',
      \     'cygwin' : 'make -f make_cygwin.mak',
      \     'mac' : 'make',
      \     'linux' : 'make',
      \     'unix' : 'gmake',
      \    },
      \ }
NeoBundle 'Shougo/vimshell'
NeoBundle 'Shougo/vimfiler'

NeoBundle 'scrooloose/nerdtree'
NeoBundle 'Shougo/neocomplcache'
NeoBundle 'Shougo/neosnippet'
NeoBundle 'Shougo/neosnippet-snippets'

NeoBundle 'tpope/vim-fugitive'

NeoBundle 'thinca/vim-ref'
NeoBundle 'kchmck/vim-coffee-script'
NeoBundle 'davidhalter/jedi-vim'
NeoBundle 'tpope/vim-rails'
NeoBundle 'slim-template/vim-slim'
call neobundle#end()

filetype plugin indent on
syntax on
syntax enable
