" ------------------------------------------------------------------------------
" Language Client
" ------------------------------------------------------------------------------

let g:LanguageClient_serverCommands = {
\ 'cpp': ['/usr/local/bin/cquery',
\ '--log-file=/tmp/cq.log',
\ '--init={"cacheDirectory":"/tmp/cquery/","extraClangArguments":["-I/Library/Developer/CommandLineTools/usr/include/c++/v1"]}']
\ }
            "\ 'cpp': ['cquery'],
            "\ 'c': ['cquery'],
            "\ }
let g:LanguageClient_autoStart = 1
let g:LanguageClient_rootMarkers = {
            \ 'cpp': ['compile_commands.json', 'build'],
            \ 'c': ['compile_commands.json', 'build'],
            \ }

set completefunc=LanguageClient#complete
set formatexpr=LanguageClient_textDocument_rangeFormatting()

let g:LanguageClient_loadSettings = 1
let g:LanguageClient_settingsPath = '/Users/noir/.config/nvim/settings.json'
