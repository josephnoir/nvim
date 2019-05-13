" ------------------------------------------------------------------------------
" Deoplete
" ------------------------------------------------------------------------------

" deoplete options
let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_smart_case = 1

" disable autocomplete by default
"let b:deoplete_disable_auto_complete=1
"let g:deoplete_disable_auto_complete=1

" Use the location-list for C-Query hits instead of the quickfix list.
let g:LanguageClient_selectionUI = 'location-list'
let g:LanguageClient_diagnosticsList = 'Location'

" Use <tab> for auto-completion.
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
inoremap <expr><s-tab> pumvisible() ? "\<c-p>" : "\<s-tab>"

" Required for operations modifying multiple buffers like C-Query's rename.
set hidden

" Initialize deoplete variables.
let g:deoplete#sources = get(g:,'deoplete#sources',{})

"call deoplete#custom#source('LanguageClient',
            "\ 'min_pattern_length',
            "\ 2)

"if !exists('g:deoplete#omni#input_patterns')
    "let g:deoplete#omni#input_patterns = {}
"endif

" Disable the candidates in Comment/String syntaxes.
"call deoplete#custom#source('_',
            "\ 'disabled_syntaxes', ['Comment', 'String'])

" Close scratch after completion.
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif

call deoplete#custom#option('sources', {
            \ 'python3': ['LanguageClient'],
            \ 'cpp': ['LanguageClient'],
            \ 'c': ['LanguageClient'],
            \ 'vim': ['vim'],
            \})

" ignored sources
"let g:deoplete#ignore_sources = {}
"let g:deoplete#ignore_sources._ = ['buffer', 'around']
