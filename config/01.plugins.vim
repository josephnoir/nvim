" ------------------------------------------------------------------------------
" Plugins
" ------------------------------------------------------------------------------

call plug#begin('~/.vim/plugged')

" --- General setup ---
Plug 'ctrlpvim/ctrlp.vim'
Plug 'itchyny/lightline.vim'
Plug 'scrooloose/nerdtree'

" --- Writing ---
Plug 'amix/vim-zenroom2'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'reedes/vim-litecorrect'
Plug 'reedes/vim-pencil'

" --- Programming ---
" Plug 'fatih/vim-go'
" Plug 'octol/vim-cpp-enhanced-highlight'
" Plug 'rust-lang/rust.vim'
" nightsense/night-and-day " Did not have time for config
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'scrooloose/nerdcommenter'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-surround'

" --- Colorschemes ---
Plug 'altercation/vim-colors-solarized'
Plug 'andreypopp/vim-colors-plain'
Plug 'lifepillar/vim-solarized8'
Plug 'nightsense/snow'
Plug 'nightsense/stellarized'
Plug 'romainl/flattened'
Plug 'https://github.com/sonph/onehalf', { 'rtp': 'vim' }

call plug#end()

" Required:
filetype plugin indent on
syntax enable
