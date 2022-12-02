" -----------------------------------------------------------------------------
" This config is targeted for Vim 8.1+ and expects you to have Plug installed.
" -----------------------------------------------------------------------------

" -----------------------------------------------------------------------------
" Plugins
" -----------------------------------------------------------------------------

call plug#begin()

" Color theme.
Plug 'morhetz/gruvbox'

" Vim usability upgrades
Plug 'itchyny/lightline.vim'
Plug 'shinchu/lightline-gruvbox.vim' " Adds gruvbox colorscheme to lightline


" Languages and file types
Plug 'chrisbra/csv.vim'
Plug 'ekalinin/dockerfile.vim'
Plug 'godlygeek/tabular' | Plug 'preservim/vim-markdown'
Plug 'iamcco/markdown-preview.vim'
Plug 'othree/html5.vim'
Plug 'pangloss/vim-javascript'
Plug 'stephpy/vim-yaml'

call plug#end()

" -----------------------------------------------------------------------------
" Colorscheme
" -----------------------------------------------------------------------------

syntax enable
set background=dark
colorscheme gruvbox

" -----------------------------------------------------------------------------
" Miscellaneous
" -----------------------------------------------------------------------------

set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set number
set relativenumber
set mouse=nc

set laststatus=2 " necessary to see lightline status line

ino jk <esc>

" Relative line numbering in normal mode, absolute in insert mode
autocmd InsertEnter * :set norelativenumber
autocmd InsertLeave * :set relativenumber

" Unmap 'undo' command by mapping it to no-op
map <u> <Nop>

" Remove trailing whitespaces on save
autocmd BufWritePre * :%s/\s\+$//e

" Enables markdown-preview to open browser through WSL
let g:mkdp_browser='wsl-open'
let g:vim_markdown_folding_disabled = 1

" Sets colorscheme for lightline status line
let g:lightline = {}
let g:lightline.colorscheme = 'gruvbox'
