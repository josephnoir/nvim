" ------------------------------------------------------------------------------
" GUI options
" ------------------------------------------------------------------------------

if has("gui_running")
  " COLORS: Solarized
  "set background=light
  "let g:solarized_termtrans=1
  "let g:solarized_termcolors=256
  "let g:solarized_contrast = 'high'
  "let g:solarized_menu = 0
  "let g:solarized_hitrail = 1
  "colorscheme solarized
  "let g:lightline = { 'colorscheme': 'solarized' }
  " COLORS: Stellarized
  colorscheme stellarized
  if system("defaults read -g AppleInterfaceStyle") =~ '^Dark'
    let g:lightline = { 'colorscheme': 'stellarized_dark' }
  else
    let g:lightline = { 'colorscheme': 'stellarized_light' }
  endif
  " COLORS: Snow
  "colorscheme snow
  "set background=dark
  "let g:lightline = { 'colorscheme': 'snow_dark' }
  " COLORS: One (https://github.com/rakr/vim-one)
endif

" Hide right scrollbar, toolbar, and nerdtree scrollbar
if has("gui_running")
  set guioptions-=r  
  set guioptions-=T
  set guioptions-=L
  set guioptions-=e
  set t_Co=256
  set guitablabel=%M\ %t
  " set guifont=Anonymous\ Pro:h14
  set guifont=Menlo:h13
  " set guifont=Iosevka:h13
  " set guifont=Fira\ Code:h11
  " set guifont=SF\ Mono:h11
  " set guifont=Inconsolata:h14
endif
