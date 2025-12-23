" ============================================================================
" Plugin Management
" ============================================================================
" This file handles automatic plugin installation and configuration.
" Plugins are cloned into the plugged directory and added to the runtime path.

" --- Plugin Directory ---
let s:plugin_dir = expand('~/.config/vim/plugged')

" --- Plugin Installation Function ---
function! s:ensure(repo)
  " Extract the plugin name from the full repository path (e.g., 'user/repo' -> 'repo')
  let name = split(a:repo, '/')[-1]
  let path = s:plugin_dir . '/' . name

  if !isdirectory(path)
    if !isdirectory(s:plugin_dir)
      call mkdir(s:plugin_dir, 'p')
    endif
    execute '!git clone --depth=1 https://github.com/' . a:repo . ' ' . shellescape(path)
  endif

  execute 'set runtimepath+=' . fnameescape(path)
endfunction

" --- Plugins List ---
" Color scheme
call s:ensure('ghifarit53/tokyonight-vim')

" File explorer
call s:ensure('preservim/nerdtree')

" Git integration
call s:ensure('tpope/vim-fugitive')

" Fuzzy finder
call s:ensure('junegunn/fzf')
call s:ensure('junegunn/fzf.vim')

" Status line
call s:ensure('itchyny/lightline.vim')

" LSP Support
call s:ensure('yegappan/lsp')

" End of plugins.vim