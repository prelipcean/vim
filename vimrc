" ============================================================================
" Main Vim Configuration File
" ============================================================================
" This is the main entry point for Vim configuration.
" It sources modular configuration files for better organization:
" - options.vim: General editor settings and behavior
" - keybinds.vim: Custom keyboard mappings and shortcuts
" - plugins.vim: Plugin management and installation
" - colors.vim: Color scheme and terminal color settings

" Display a confirmation message when the configuration is successfully loaded
" (This is useful for debugging configuration issues)
echom "vimrc loaded from ~/.config/vim/vimrc"

" Load general editor options and settings
source /home/george/.config/vim/options.vim

" Load custom keybindings and mappings
source /home/george/.config/vim/keybinds.vim

" Load plugin manager and install/configure plugins
source /home/george/.config/vim/plugins.vim

" Load color scheme and terminal color settings
source /home/george/.config/vim/colors.vim

" Load LSP configuration
source /home/george/.config/vim/lsp.vim

" End of vimrc
