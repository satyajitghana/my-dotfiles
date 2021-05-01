set laststatus=2 " Always show status line
set wildmenu " Enable a menu at the bottom with tab-key completion
set showtabline=2 " Show tabline
set ruler " Show current cursor position
set nu " Switch on numbering
set encoding=utf-8 " Necessary for Windows to display vim-airline properly
set hlsearch " Highlight search result
set incsearch " See cursor move when typing
set mouse=a " Enable use of mouse for all modes
set autochdir " For Neovim

" Toggle relative numbering
nnoremap <C-n> :set rnu!<CR>

" Color scheme
syntax enable
colorscheme default
" highlight Normal ctermbg=235
" highlight StatusLine ctermfg=253
" highlight StatusLineNC ctermfg=243
" highlight Tabline ctermbg=239
" highlight TablineFill ctermfg=243
" highlight VertSplit ctermfg=235 ctermbg=243

" Indentation and tab
filetype indent on
set expandtab " Always use space instead of tab
autocmd FileType vim setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
autocmd FileType sh setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
autocmd FileType python setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4
autocmd FileType tex setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
autocmd FileType markdown setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4
autocmd FileType json setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
autocmd FileType yaml setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2

