" set relative numbers and number for current line
set relativenumber
set number

" set scroll offset to 8 lines
set so=8

let mapleader=" "

" move selection vertically and align
vnoremap J :m +1<CR>gv=gv
vnoremap K :m -2<CR>gv=gv

" center page and half page movements
nnoremap <C-d> <C-d>zz
nnoremap <C-u> <C-u>zz
nnoremap <C-b> <C-b>zz
nnoremap <C-f> <C-f>zz

" center search results
nnoremap n nzzzv
nnoremap N Nzzzv

" paste without killing register
nnoremap <leader>p \"_dP
vnoremap <leader>p \"_dP

nnoremap <leader>kd gg=G<C-O>

