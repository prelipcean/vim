" ============================================================================
" General Editor Options
" ============================================================================
" This file sets up core Vim behavior, indentation, display, and usability features.

" --- Filetype and Plugins ---
filetype plugin indent on                " Enable filetype detection, plugins, and auto-indenting

" --- Clipboard ---
set clipboard=unnamedplus                " Use system clipboard for all yank/paste

" --- Tabs and Indentation ---
set expandtab                            " Use spaces instead of tabs
set shiftwidth=2                         " Spaces per indent level
set softtabstop=2                        " Spaces per Tab key
set tabstop=2                            " Display width of tab character
set smartindent                          " Smart auto-indenting for new lines

" --- Line Numbers ---
set number                               " Show absolute line numbers
set relativenumber                       " Show relative line numbers

" --- Bracket Matching ---
set showmatch                            " Highlight matching brackets/parentheses

" --- Backspace Behavior ---
set backspace=indent,eol,start           " Allow backspace over everything

" --- Syntax Highlighting ---
syntax on                                " Enable syntax highlighting

" --- Split window behavior ---
set splitbelow                          " New horizontal splits go below
set splitright                          " New vertical splits go right

" dw/diw/ciw treat dash-separated words as single word
set iskeyword+=-

" End of options.vim

