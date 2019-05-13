" ------------------------------------------------------------------------------
" Plugin configurations
" ------------------------------------------------------------------------------

" --- ctrl-p ---
" https://github.com/ctrlpvim/ctrlp.vim
let g:ctrlp_working_path_mode = 0

let g:ctrlp_map = '<c-p>'
map <leader>p :CtrlP<cr>
map <c-b> :CtrlPBuffer<cr>

let g:ctrlp_max_height = 20
let g:ctrlp_custom_ignore = 'node_modules\|^\.DS_Store\|^\.git\|^\.coffee'

if executable('rg')
  let g:ctrlp_user_command = 'rg --files %s'
  let g:ctrlp_use_caching = 0
  let g:ctrlp_working_path_mode = 'ra'
  " let g:ctrlp_switch_buffer = 'et'
endif

" --- goyo + zenroom ---
" https://github.com/junegunn/goyo.vim
" https://github.com/amix/vim-zenroom2
let g:goyo_width=100
let g:goyo_margin_top = 2
let g:goyo_margin_bottom = 2
nnoremap <silent> <leader>z :Goyo<cr>

" --- vim pencil ---
" https://github.com/reedes/vim-pencil
" does also provide nice cursor movement
let g:pencil#wrapModeDefault = 'soft'   " default is 'hard'
"let g:airline_section_x = '%{PencilMode()}'
let g:pencil#mode_indicators = {'hard': 'H', 'auto': 'A', 'soft': 'S', 'off': '',}
let g:pencil#conceallevel = 0

augroup pencil
  autocmd!
  autocmd FileType markdown,mkd call pencil#init()
  autocmd FileType text         call pencil#init()
  autocmd FileType latex,tex    call pencil#init()
augroup END

" --- litecorrect ---
" https://github.com/reedes/vim-litecorrect
" only enable for some file types
augroup litecorrect
  autocmd!
  autocmd FileType markdown,mkd call litecorrect#init()
  autocmd FileType textile      call litecorrect#init()
  autocmd FileType latex,tex    call litecorrect#init()
augroup END

" --- Latex flavor is tex ---
let g:tex_flavor = "latex"
" let g:tex_conceal = ""
let g:conceallevel=0

" --- Nerd Tree ---
" https://github.com/scrooloose/nerdtree
let g:NERDTreeWinPos = "left"
let NERDTreeShowHidden=0
let NERDTreeIgnore = ['\.pyc$', '__pycache__']
let g:NERDTreeWinSize=35
map <leader>nn :NERDTreeToggle<cr>
map <leader>nb :NERDTreeFromBookmark
map <leader>nf :NERDTreeFind<cr>

" --- Lightline ---
" https://github.com/itchyny/lightline.vim
if has("gui_running")
  let g:lightline = {
  \   'colorscheme': 'solarized',
  \ }
else
  let g:lightline = {
  \   'colorscheme': 'seoul256',
  \ }
endif
" Hide vims -- INSERT -- in the bottom line
set noshowmode

" --- Limelight ---
" https://github.com/junegunn/limelight.vim
" Color name (:help cterm-colors) or ANSI code
let g:limelight_conceal_ctermfg = 'gray'
let g:limelight_conceal_ctermfg = 240
" Color name (:help gui-colors) or RGB color
let g:limelight_conceal_guifg = 'DarkGray'
let g:limelight_conceal_guifg = '#777777'
" Default: 0.5
" let g:limelight_default_coefficient = 0.7
" Number of preceding/following paragraphs to include (default: 0)
" let g:limelight_paragraph_span = 1
" Beginning/end of paragraph
"   When there's no empty line between the paragraphs
"   and each paragraph starts with indentation
"let g:limelight_bop = '^\s'
"let g:limelight_eop = '\ze\n^\s'
" Highlighting priority (default: 10)
"   Set it to -1 not to overrule hlsearch
"let g:limelight_priority = -1
" start wiht Goyo
"autocmd! User GoyoEnter Limelight
"autocmd! User GoyoLeave Limelight!

" --- YCM ---
" https://github.com/Valloric/YouCompleteMe
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_confirm_extra_conf = 0
