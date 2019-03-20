set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

Plugin 'pangloss/vim-javascript'
Plugin 'elzr/vim-json'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-airline/vim-airline'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'Raimondi/delimitMate'
Plugin 'Yggdroot/indentLine'
Plugin 'posva/vim-vue'
Plugin 'mattn/emmet-vim'
Plugin 'joshdick/onedark.vim'
Plugin 'klen/python-mode'
call vundle#end()

syntax on
filetype on
filetype plugin indent on
set expandtab
set textwidth=79
set tabstop=8
set softtabstop=4
set shiftwidth=4
set autoindent
set number
set relativenumber
set fileformat=unix
filetype indent on
"au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/
set encoding=utf-8
set clipboard=unnamed
imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")
noremap <F3> :NERDTreeToggle<CR>
autocmd FileType javascript set sw=2 ts=2 sts=2
"autocmd FileType javascript set ts=2
"autocmd FileType javascript set sts=2
autocmd FileType html set sw=2 ts=2 sts=2
"autocmd FileType html set ts=2
"autocmd FileType html set sts=2
autocmd FileType vue set sw=2 ts=2 sts=2
"autocmd FileType vue set ts=2
"autocmd FileType vue set sts=2
"autocmd Filetype python set sw=4 et ts=8 sts=4

"================================================================================
"Remap Keys to navigate though windows without Ctrl W
"================================================================================
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
"================================================================================
"Python stuff
"================================================================================
imap ,,b import ipdb; ipdb.set_trace()  #DEBUG
imap ,,d import pdb; pdb.set_trace()  #DEBUG
"================================================================================
"Colorscheme and it's configurations
"================================================================================
let g:onedark_color_overrides = {
\ "black": {"gui": "#2F343F", "cterm": "233", "cterm16": "0" },
\ "purple": { "gui": "#C678DF", "cterm": "99", "cterm16": "5" },
\ "green": {"gui": "#98c379", "cterm": "42", "cterm16": "5"},
\}
colorscheme onedark

"================================================================================
" Search files recursively
"================================================================================
set path +=**
"================================================================================
" Dsiplay all matching files when using tab complete
"================================================================================
set wildmenu
