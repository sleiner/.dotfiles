let mapleader = "<Space>"

" Syntax Highlighting
syntax on

" Display current position in the file
set ruler

" Add line numbers
set number relativenumber

" Use relative numbers by default in normal mode, absolute in insert mode
:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
:  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
:augroup END

" Toggle between relative and absolute numbers using <leader>#
nnoremap <leader># :set relativenumber! <CR>

" search case-insensitive if search term is all lowercase
set ignorecase smartcase

" use the system clipboard
set clipboard=unnamed

" Show a few lines of context around the cursor. Note that this makes the
" text scroll if you mouse-click near the start or end of the window.
set scrolloff=10
