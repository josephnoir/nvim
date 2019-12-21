" ------------------------------------------------------------------------------
" Syntax
" ------------------------------------------------------------------------------

set t_Co=256
syntax enable

" Check if macOS dark mode enabled.
if system("defaults read -g AppleInterfaceStyle") =~ '^Dark'
  set background=dark
else
  set background=light
endif

" Detect .cl as C files for syntax highlighting.
autocmd BufRead,BufNewFile *.cl set filetype=C

" Highlight non-ascii characters (but doesn't seem to work).
highlight nonascii guibg=Red ctermbg=1 term=standout
au BufReadPost * syntax match nonascii "[^\u0000-\u007F]"

" ------------------------------------------------------------------------------
" Cursor for iTerm2
" ------------------------------------------------------------------------------

let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

" ------------------------------------------------------------------------------
" General config
" ------------------------------------------------------------------------------

" Required for pencil and litecorrect.
set nocompatible
filetype plugin on
filetype indent on

" Set to auto read when a file is changed from the outside.
set autoread

" With a map leader it's possible to do extra key combinations,
" like <leader>w saves the current file.
let mapleader = ","
let g:mapleader = ","

" Default language is English.
let $LANG='en' 
set langmenu=en

set wildmenu

" Ignore compiled files.
set wildignore=*.o,*~,*.pyc,*.hi
if has("win16") || has("win32")
    set wildignore+=.git\*,.hg\*,.svn\*
else
    set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store
endif

" Always show current position.
set ruler

" Show line numbers.
set number

" A buffer becomes hidden when it is abandoned.
set hid

" Configure backspace so it acts as it should act.
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Ignore case when searching.
set ignorecase

" When searching try to be smart about cases.
set smartcase

" What does this do?
scriptencoding utf-8

" Makes search act like search in modern browsers.
set incsearch

" No header when printing.
set printoptions+=header:0

" Don't redraw while executing macros (good performance config).
set lazyredraw

" Show matching brackets when text indicator is over them.
set showmatch 
" How many tenths of a second to blink when matching brackets.
set mat=2

" Support moving in empty space in block mode.
set virtualedit=block

" No annoying sound on errors.
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" Use spaces instead of tabs.
set expandtab

" Be smart when using tabs ;)
set smarttab

" Set tabs to two spaces.
set shiftwidth=2
set softtabstop=2
set tabstop=2

" Set utf8 as standard encoding.
set encoding=utf8
"
" Use Unix as the standard file type.
set ffs=unix,dos,mac

" Turn backup off, since most stuff is in SVN, git, etc. anyway.
set nobackup
set nowb
set noswapfile

" Specify the behavior when switching between buffers.
try
  set switchbuf=useopen,usetab,newtab
  set stal=2
catch
endtry

" Return to last edit position when opening files.
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" Mouse selection and cursor.
if has("gui_running")
  set mouse=a
else
  set mouse=a
  map <ScrollWheelUp> <C-Y>
  map <ScrollWheelDown> <C-E>
endif

" Always show the status line.
set laststatus=2
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l\ \ Column:\ %c

" Delete trailing white space on save.
func! DeleteTrailingWS()
  exe "normal mz"
  %s/\s\+$//ge
  exe "normal `z"
endfunc
autocmd BufWrite *.py :call DeleteTrailingWS()
autocmd BufWrite *.hpp :call DeleteTrailingWS()
autocmd BufWrite *.cpp :call DeleteTrailingWS()
autocmd BufWrite *.hs :call DeleteTrailingWS()

" Build with Ninja is there is a ninja build file.
" rebind :make to Ninja if a Ninja build file exists
if filereadable("./build/build.ninja") || filereadable("./build.ninja")
  set makeprg=ninja
endif

" Check if a build file is in the local build folder.
if filereadable("./build/build.ninja") || filereadable("./build/Makefile")
  map <leader>bb :wa<CR>:make! -C build<CR>
  inoremap <leader>bb <ESC>:wa<CR>:make! -C build<CR>
else
  map <leader>bb :wa<CR>:make!<CR>
  inoremap <leader>bb <ESC>:wa<CR>:make!<CR>
endif
" map <leader>bb :make!<cr> :copen<cr><C-W><S-J>
" map <leader>bb :make!<cr> :copen<cr> :redraw!<cr>
" map <leader>bc :make clean<cr> :copen<cr> :redraw!<cr>

" ==============================================================================
"                                   Spelling
" ==============================================================================

" Use US English and 'new' German.
if has("spell")
  set spelllang=en_us,de_20
  set spellfile=~/.vim/spellfile.add
endif

" Pressing ',ss' will toggle and untoggle spell checking.
map <leader>ss :setlocal spell!<cr>

" ------------------------------------------------------------------------------
" Start extended stuff
" ------------------------------------------------------------------------------

if exists('$TMUX') 
    set term=screen-256color 
endif

" Highlight characters in line 81.
augroup collumnLimit
  autocmd!
  autocmd BufEnter,WinEnter,FileType cpp 
        \ highlight CollumnLimit ctermbg=gray guibg=gray
  let collumnLimit = 81
  let pattern =
        \ '\%<' . (collumnLimit+1) . 'v.\%>' . collumnLimit . 'v'
  autocmd BufEnter,WinEnter,FileType cpp
        \ let w:m1=matchadd('CollumnLimit', pattern, -1)
augroup END

" Hide tabbar.
set showtabline=0

" ------------------------------------------------------------------------------
" Helpers
" ------------------------------------------------------------------------------

" Returns true if paste mode is enabled.
function! HasPaste()
    if &paste
        return 'PASTE MODE  '
    endif
    return ''
endfunction

