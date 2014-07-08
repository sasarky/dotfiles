set nocompatible
filetype off

if has('vim_starting')
    set runtimepath+=~/.vim/bundle/neobundle.vim
    call neobundle#rc(expand('~/.vim/bundle/'))
endif

" NeoBundle
NeoBundle 'itchyny/lightline.vim'
NeoBundle 'Align'
NeoBundle 'tpope/vim-surround'
NeoBundle 'smartword'
NeoBundle 'thinca/vim-quickrun'


NeoBundle 'Shougo/neobundle.vim'
NeoBundle 'Shougo/neomru.vim', {'depends' : 'Shougo/unite.vim'}
NeoBundle 'Shougo/vimproc'
NeoBundle 'Shougo/vimshell'
NeoBundle 'Shougo/vimfiler'

NeoBundle 'Shougo/neocomplcache'
NeoBundle 'Shougo/neosnippet'
NeoBundle 'Shougo/neosnippet-snippets'

NeoBundle 'thinca/vim-ref'
NeoBundle 'kchmck/vim-coffee-script'
NeoBundle 'davidhalter/jedi-vim'


filetype plugin indent on
filetype indent on
syntax on
