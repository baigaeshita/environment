set nocompatible              " be iMproved, required
filetype off                  " required

call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-fugitive', { 'for': 'go'}
Plug 'fatih/vim-go', { 'for': 'go'}
Plug 'majutsushi/tagbar'
Plug 'scrooloose/nerdtree'
Plug 'fatih/molokai'

call plug#end()

filetype plugin indent on    " required
syntax on
set nu
set ignorecase

" protobuf syntax
augroup filetype
    au! BufRead,BufNewFile *.proto setfiletype proto
augroup end


"" tab to space for indent
" To control the number of space characters that will be inserted when the tab
" key is pressed
set tabstop=4
" To change the number of space characters inserted for indentation
set shiftwidth=4
" To insert space characters whenever the tab key is pressed
set expandtab


"" tagbar
nmap <C-t> :TagbarToggle<CR>

"" NERDTree
nmap <C-n> :NERDTreeToggle<CR>


"" vim-go
" ref: https://github.com/fatih/vim-go
" let mapleader=","
au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <leader>c <Plug>(go-coverage)
au FileType go nmap <Leader>e <Plug>(go-rename)
au FileType go nmap <Leader>s <Plug>(go-implements)
au FileType go nmap <Leader>i <Plug>(go-info)

let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_fields = 1
let g:go_highlight_types = 1
let g:go_highlight_interfaces = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

let g:go_fmt_command = "goimports"

" check
let g:go_metalinter_enabled = ['vet', 'golint', 'errcheck']
let g:go_metalinter_autosave = 1
let g:go_metalinter_autosave_enabled = ['vet', 'golint']
let g:syntastic_mode_map = { 'mode': 'active', 'passive_filetypes': ['go'] }
