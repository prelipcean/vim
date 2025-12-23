" ============================================================================
" Language Server Protocol (LSP) Configuration
" ============================================================================
" This file configures LSP integration for enhanced code intelligence, diagnostics,
" and navigation in supported languages.

" --- Diagnostics Highlighting ---
let lspOpts = #{autoHighlightDiags: v:true}
autocmd User LspSetup call LspOptionsSet(lspOpts)

" --- LSP Servers ---
let lspServers = [
      \ #{
      \   name: 'rust-analyzer',
      \   filetype: ['rust'],
      \   path: 'rust-analyzer',
      \   args: []
      \ },
      \ #{
      \   name: 'clangd',
      \   filetype: ['c', 'cpp', 'objc', 'objcpp'],
      \   path: '/usr/bin/clangd',
      \   args: []
      \ }
      \ ]

" Register all configured LSP servers
autocmd User LspSetup call LspAddServer(lspServers)

" --- Key Mappings for LSP Features ---
nnoremap gd :LspGotoDefinition<CR>        " Go to definition
nnoremap gr :LspShowReferences<CR>        " Show references
nnoremap K  :LspHover<CR>                 " Show hover documentation
nnoremap gl :LspDiag current<CR>          " Show diagnostics for current line
nnoremap <leader>nd :LspDiag next \| LspDiag current<CR>            " Jump to next diagnostic
nnoremap <leader>pd :LspDiag prev \| LspDiag current<CR>            " Jump to previous diagnostic
inoremap <silent> <C-Space> <C-x><C-o>    " Trigger completion in insert mode

" --- Completion ---
autocmd FileType php setlocal omnifunc=lsp#complete

" --- Custom Diagnostic Signs ---
autocmd User LspSetup call LspOptionsSet(#{
    \   diagSignErrorText: '✘',
    \   diagSignWarningText: '▲',
    \   diagSignInfoText: '»',
    \   diagSignHintText: '⚑',
    \ })

" End of lsp.vim