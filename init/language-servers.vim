" Required for operations modifying multiple buffers like rename.
set hidden

let g:LanguageClient_serverCommands = {
    \ 'rust': ['rust-analyzer'],
    \ 'sh': ['bash-language-server', 'start'],
    \ 'elixir': ['elixir-ls'],
    \ 'dockerfile': ['docker-langserver', '--stdio'],
    \ 'c': ['cquery'],
    \ 'typescript': ['javascript-typescript-stdio'],
    \ 'swift': ['xcrun', 'sourcekit-lsp']
    \ }

nnoremap <F5> :call LanguageClient_contextMenu()<CR>
" Or map each action separately
nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
nnoremap <silent> <F4> :call LanguageClient#textDocument_rename()<CR>
