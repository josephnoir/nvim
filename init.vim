for f in split(glob('~/.config/nvim/config/*.vim'), '\n')
	exe 'source' f
endfor

"set runtimepath^=~/.vim runtimepath+=~/.vim/after
"let &packpath = &runtimepath
"source ~/.vimrc


"if has("gui_vimr")
  "" COLORS: NeoSolarized
  "" set background=light
  ""colorscheme NeoSolarized
  ""let g:neosolarized_contrast = "normal"
  ""let g:neosolarized_visibility = "normal"
  ""let g:neosolarized_vertSplitBgTrans = 1
  ""let g:neosolarized_bold = 1
  ""let g:neosolarized_underline = 1
  ""let g:neosolarized_italic = 1
  ""let g:lightline = { 'colorscheme': 'solarized' }
  "" COLORS: Solarized
  ""set background=light
  ""let g:solarized_termtrans=1
  ""let g:solarized_termcolors=256
  ""let g:solarized_contrast = 'high'
  ""let g:solarized_menu = 0
  ""let g:solarized_hitrail = 1
  ""colorscheme solarized
  ""let g:lightline = { 'colorscheme': 'solarized' }
  "" COLORS: Stellarized
  "if strftime('%H') >= 7 && strftime('%H') < 17
    "set background=light
    "let g:lightline = { 'colorscheme': 'stellarized_light' }
  "else
    "set background=dark
    "let g:lightline = { 'colorscheme': 'stellarized_dark' }
  "endif
  "colorscheme stellarized
  "" COLORS: Snow
  ""colorscheme snow
  ""set background=dark
  ""let g:lightline = { 'colorscheme': 'snow_dark' }
"endif

"" ------------------------------------------------------------------------------
"" GUI options
"" ------------------------------------------------------------------------------

"" Hide right scrollbar, toolbar, and nerdtree scrollbar
"if has("gui_vimr")
  "set guioptions-=r  
  "set guioptions-=T
  "set guioptions-=L
  "set guioptions-=e
  ""set t_Co=256
  "set termguicolors
  "set guitablabel=%M\ %t
"endif

