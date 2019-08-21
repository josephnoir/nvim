" ------------------------------------------------------------------------------
" Keybindings
" ------------------------------------------------------------------------------

" Clear highlighting on escape in normal mode
nnoremap <esc> :noh<return><esc>
nnoremap <esc>^[ <esc>^[

" Map <Space> to / (search) and Ctrl-<Space> to ? (backwards search)
map <space> /
map <c-space> ?

" Disable highlight when <leader><cr> is pressed
map <silent> <leader><cr> :noh<cr>

" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Close the current buffer
map <leader>bd :Bclose<cr>:tabclose<cr>gT

" Close all the buffers
map <leader>ba :bufdo bd<cr>

map <leader>l :bnext<cr>
map <leader>h :bprevious<cr>

" Useful mappings for managing tabs
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove 
map <leader>t<leader> :tabnext

" Let 'tl' toggle between this and the last accessed tab
"let g:lasttab = 1
"nmap <Leader>tl :exe "tabn ".g:lasttab<CR>
"au TabLeave * let g:lasttab = tabpagenr()

" Opens a new tab with the current buffer's path
" Super useful when editing files in the same directory
map <leader>te :tabedit <c-r>=expand("%:p:h")<cr>/

" Switch CWD to the directory of the open buffer
map <leader>cd :cd %:p:h<cr>:pwd<cr>

" Remap VIM 0 to first non-blank character
map 0 ^

" Move a line of text using ALT+[jk] or Command+[jk] on mac
nmap <M-j> mz:m+<cr>`z
nmap <M-k> mz:m-2<cr>`z
vmap <M-j> :m'>+<cr>`<my`>mzgv`yo`z
vmap <M-k> :m'<-2<cr>`>my`<mzgv`yo`z

if has("mac") || has("macunix")
  nmap <D-j> <M-j>
  nmap <D-k> <M-k>
  vmap <D-j> <M-j>
  vmap <D-k> <M-k>
endif

" When you press <leader>r you can search and replace the selected text
vnoremap <silent> <leader>r :call VisualSelection('replace', '')<CR>

" Shortcuts using <leader>
map <leader>sn ]s
map <leader>sp [s
map <leader>sa zg
map <leader>s? z=

" Remove the Windows ^M - when the encodings gets messed up
noremap <Leader>m mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm

" Quickly open a buffer for scribble
map <leader>q :e ~/buffer<cr>

" Quickly open a markdown buffer for scribble
map <leader>x :e ~/buffer.md<cr>

" Toggle paste mode on and off
map <leader>pp :setlocal paste!<cr>

map <leader>bm :copen<CR><C-W><S-J>
map <leader>bn :cnext<cr>
map <leader>bp :cprevious<cr>
map <leader>bc :cclose<cr>

" Rebind CTRL+L for applying Clang-suggested fixes.
"map <C-L> :YcmCompleter FixIt<CR>
"inoremap <C-L> :YcmCompleter FixIt<CR>
map <leader>l :YcmCompleter FixIt<CR>
inoremap <leader>l :YcmCompleter FixIt<CR>

" bind leader jd to jump to definition
nnoremap <leader>jd :YcmCompleter GoTo<CR>

" rebind CTRL+K for auto-formatting.
" map <C-K> :pyf clang-format<CR>
if has('python3')
  map <leader>f :py3f ~/.config/nvim/clang-format.py<CR>
else
  map <leader>f :py ~/.config/nvim/clang-format.py<CR>
endif

" Begin: Dominik
" Rebind CTRL+B to build current project.
if filereadable("./build/build.ninja") || filereadable("./build/Makefile")
  map <C-B> :wa<CR>:make! -C build<CR>
  inoremap <C-B> <ESC>:wa<CR>:make! -C build<CR>
else
  map <C-B> :wa<CR>:make!<CR>
  inoremap <C-B> <ESC>:wa<CR>:make!<CR>
endif

" Rebind CTRL+M to open build messages.
noremap <S-B> :copen<CR><C-W><S-J>

" Rebind CTRL+N for jumping to the next error/warning.
map <C-N> :cnext<CR>

" Rebind CTRL+L for applying Clang-suggested fixes.
"map <C-L> :YcmCompleter FixIt<CR>
"inoremap <C-L> :YcmCompleter FixIt<CR>
" End: Dominik

" Reload vim conf
map <leader>e :e! ~/.vimrc<cr>
autocmd! bufwritepost vimrc source ~/.vimrc

" Smart mappings on the command line
cno $h e ~/
cno $d e ~/Desktop/
cno $j e ./
cno $c e <C-\>eCurrentFileDir("e")<cr>

" $q is super useful when browsing on the command line
" it deletes everything until the last slash 
cno $q <C-\>eDeleteTillSlash()<cr>

" Bash like keys for the command line
"cnoremap <C-A>        <Home>
"cnoremap <C-E>        <End>
"cnoremap <C-K>        <C-U>

"cnoremap <C-P> <Up>
"cnoremap <C-N> <Down>

" Remove trailing whitespace.
nmap <leader>$ :call Preserve("%s/\\s\\+$//e")<CR>
