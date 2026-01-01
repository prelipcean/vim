" ============================================================================
" Keybindings and Mappings
" ============================================================================
" This file defines custom keyboard shortcuts for navigation, file management,
" search, and plugin features. Mappings use <leader> (space) for easy access.

" --- Leader Key ---
let mapleader = " "

" --- File Navigation ---
" <leader>cd - Open netrw file explorer
" <leader>n  - Toggle NERDTree file explorer
nnoremap <leader>cd :Ex<CR>
nnoremap <leader>n :NERDTreeToggle<CR>

" --- File Operations ---
" <leader>w - Save current file
" <leader>q - Quit Vim
nnoremap <leader>w :w<CR>
nnoremap <leader>q :q<CR>

" --- Fuzzy Finder (fzf) ---
" <leader>ff - Fuzzy file search
" <leader>fh - Search command history
" <leader>fb - List/switch buffers
" <leader>fi - Find files in Vim config
nnoremap <leader>ff :Files<CR>
nnoremap <leader>fh :History<CR>
nnoremap <leader>fb :Buffers<CR>
nnoremap <leader>fi :Files ~/.config/vim<CR>

" --- Grep/Search ---
" <leader>fs - Grep current word
" <leader>fg - Grep input string
" <leader>fc - Grep for current file name
nnoremap <leader>fs :Rg <C-r><C-w><CR>
nnoremap <leader>fg :Rg<Space>
nnoremap <leader>fc :execute 'Rg ' . expand('%:t:r')<CR>

" --- Quickfix/Help ---
" <leader>fq - Open quickfix list
" <leader>fH - Open helptags
nnoremap <leader>fq :CList<CR>
nnoremap <leader>fH :Helptags<CR>

" --- Git Integration (vim-fugitive) ---
" <leader>gs - Show Git status (split window)
" <leader>gb - Show Git blame for current line
nnoremap <leader>gs :Git<CR>
nnoremap <leader>gb :Gblame<CR>

" --- Window Navigation ---
" Ctrl+h/j/k/l - Move between windows
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" --- Window Splits ---
" <leader>sv - Split vertical
" <leader>sh - Split horizontal
" <leader>sc - Close current window
" <leader>so - Close other windows (only keep current)
" <leader>se - Make splits equal size
nnoremap <leader>sv :vsplit<CR>
nnoremap <leader>sh :split<CR>
nnoremap <leader>sc :close<CR>
nnoremap <leader>so :only<CR>
nnoremap <leader>se <C-w>=

" End of keybinds.vim
