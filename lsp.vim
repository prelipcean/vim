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
" nnoremap = normal mode, non-recursive map
" inoremap = insert mode, non-recursive map
" <silent> = don't echo the command
"
" <leader>ld - Go to definition
" <leader>lr - Show references
" <leader>lh - Show hover documentation
" <leader>ll - Show diagnostics for current line
" <leader>ln - Jump to next diagnostic
" <leader>lp - Jump to previous diagnostic
nnoremap <silent> <leader>ld <Cmd>LspGotoDefinition<CR>
nnoremap <silent> <leader>lr <Cmd>LspShowReferences<CR>
nnoremap <silent> <leader>lh <Cmd>LspHover<CR>
nnoremap <silent> <leader>ll :LspDiag current<CR>
nnoremap <silent> <leader>ln :LspDiag next<CR>
nnoremap <silent> <leader>lp :LspDiag prev<CR>
inoremap <silent> <C-Space> <C-x><C-o>

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
