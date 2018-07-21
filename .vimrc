execute pathogen#infect()
filetype plugin indent on
" show existing tabs with 4 spaces width
set tabstop=4
" when indenting with > , use 4 spaces width
set shiftwidth=4
" on pressing tab insert 4 spaces
set expandtab
syntax on
set autoindent
set number

map <C-n> :NERDTreeToggle<CR>

" lightlinestuff
set laststatus=2
set noshowmode

nnoremap <silent> + :exe "resize " . (winheight(0) * 3/2)<CR>
nnoremap <silent> - :exe "resize " . (winheight(0) * 2/3)<CR>
