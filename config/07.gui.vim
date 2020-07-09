" ------------------------------------------------------------------------------
" GUI options
" ------------------------------------------------------------------------------

if has("gui_running")
  " COLORS: Solarized
  "if system("defaults read -g AppleInterfaceStyle") =~ '^Dark'
    "set background=dark
  "else
    "set background=light
  "endif
  "let g:solarized_termtrans=1
  "let g:solarized_termcolors=256
  "let g:solarized_contrast = 'high'
  "let g:solarized_menu = 0
  "let g:solarized_hitrail = 1
  "colorscheme solarized
  "let g:lightline = { 'colorscheme': 'solarized' }
  " COLORS: Solarized8
  if system("defaults read -g AppleInterfaceStyle") =~ '^Dark'
    set background=dark
  else
    set background=light
  endif
  "let g:solarized_termtrans=1  " 0, 1
  "let g:solarized_visibility='normal'  " 'normal', 'low', 'high'
  "let g:solarized_diffmode='normal'  " 'normal', 'low', 'high'
  "let g:solarized_statusline='normal'  " 'normal', 'low', 'flat'
  "let g:solarized_italics=1  " 1, 0
  "let g:solarized_old_cursor_style=0 "0, 1
  "let g:solarized_use16=0 "0, 1
  "let g:solarized_extra_hi_groups=0 "0, 1
  colorscheme solarized8
  let g:lightline = { 'colorscheme': 'solarized' }
  " COLORS: Stellarized
  "colorscheme stellarized
  "if system("defaults read -g AppleInterfaceStyle") =~ '^Dark'
    "let g:lightline = { 'colorscheme': 'stellarized_dark' }
  "else
    "let g:lightline = { 'colorscheme': 'stellarized_light' }
  "endif
  " COLORS: Snow
  "colorscheme snow
  "set background=dark
  "let g:lightline = { 'colorscheme': 'snow_dark' }
  " COLORS: One (https://github.com/rakr/vim-one)
endif


if has("gui_running")
  set guioptions-=r  
  set guioptions-=T
  set guioptions-=L
  set guioptions-=e
  set t_Co=256
  set guitablabel=%M\ %t
  if has("gui_vimr")
    " Here goes some VimR specific settings like
    " Nothing yet
    " Hide right scrollbar, toolbar, and nerdtree scrollbar
  else
    " set guifont=Anonymous\ Pro:h14
    set guifont=Menlo:h13
    " set guifont=Iosevka:h13
    " set guifont=Fira\ Code:h11
    " set guifont=SF\ Mono:h11
    " set guifont=Inconsolata:h14
  endif
endif


