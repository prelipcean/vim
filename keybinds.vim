" ============================================================================
" Keybindings and Mappings
" ============================================================================
" This file defines custom keyboard shortcuts for navigation, file management,
" search, and plugin features. Mappings use <leader> (space) for easy access.

" --- Leader Key ---
let mapleader = " "

" --- File Navigation ---
nnoremap <leader>cd :Ex<CR>              " Open netrw file explorer
nnoremap <leader>n :NERDTreeToggle<CR>   " Toggle NERDTree file explorer

" --- File Operations ---
nnoremap <leader>w :w<CR>                " Save current file
nnoremap <leader>q :q<CR>                " Quit Vim

" --- Fuzzy Finder (fzf) ---
nnoremap <leader>ff :Files<CR>           " Fuzzy file search
nnoremap <leader>fh :History<CR>         " Search command history
nnoremap <leader>fb :Buffers<CR>         " List/switch buffers
nnoremap <leader>fi :Files ~/.config/vim<CR> " Find files in Vim config

" --- Grep/Search ---
nnoremap <leader>fs :Rg <C-r><C-w><CR>   " Grep current word
nnoremap <leader>fg :Rg<Space>           " Grep input string
nnoremap <leader>fc :execute 'Rg ' . expand('%:t:r')<CR> " Grep for current file name

" --- Quickfix/Help ---
nnoremap <leader>fq :CList<CR>           " Open quickfix list
nnoremap <leader>fh :Helptags<CR>        " Open helptags

" --- Git Integration (vim-fugitive) ---
nnoremap <leader>gs :Git<CR>             " Show Git status (split window)
nnoremap <leader>gb :Gblame<CR>          " Show Git blame for current line

" End of keybinds.vim
