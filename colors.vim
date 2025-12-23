" ============================================================================
" Color Scheme and UI Enhancements
" ============================================================================
" This file configures the color scheme, status line, and related UI options.

" Enable true color support for terminals that support it
set termguicolors

" --- Tokyo Night Color Scheme ---
let g:tokyonight_style = 'night'         " Options: 'night', 'storm'
let g:tokyonight_enable_italic = 1       " Enable italics for comments and keywords
colorscheme tokyonight                   " Activate the color scheme

" --- Status Line (lightline) ---
set laststatus=2                         " Always show the status line
let g:lightline = {
      \ 'colorscheme': 'tokyonight',
      \ }

" End of colors.vim