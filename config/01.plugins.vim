" ------------------------------------------------------------------------------
" Plugins
" ------------------------------------------------------------------------------

call plug#begin('~/.vim/plugged')

" --- General setup ---
Plug 'ctrlpvim/ctrlp.vim'
Plug 'scrooloose/nerdtree'
Plug 'itchyny/lightline.vim'

" --- Writing ---
Plug 'reedes/vim-pencil'
Plug 'reedes/vim-litecorrect'
Plug 'junegunn/goyo.vim'
Plug 'amix/vim-zenroom2'
Plug 'junegunn/limelight.vim'

" --- Programming ---
Plug 'scrooloose/nerdcommenter'
" Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'sheerun/vim-polyglot'
Plug 'rust-lang/rust.vim'
" Plug 'fatih/vim-go'
Plug 'tpope/vim-dispatch'
" nightsense/night-and-day " Did not have time for config
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

" --- Colorschemes ---
Plug 'altercation/vim-colors-solarized'
Plug 'nightsense/stellarized'
Plug 'nightsense/snow'
Plug 'icymind/NeoSolarized'
Plug 'andreypopp/vim-colors-plain'

call plug#end()

" Required:
filetype plugin indent on
syntax enable
