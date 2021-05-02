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
set foldlevel=20

" Toggle relative numbering
nnoremap <C-n> :set rnu!<CR>

" Clear highlighting on escape in normal mode
nnoremap <esc> :noh<return><esc>
nnoremap <esc>^[ <esc>^[

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

" ScrollBar
augroup ScrollbarInit
  autocmd!
  autocmd CursorMoved,VimResized,QuitPre * silent! lua require('scrollbar').show()
  autocmd WinEnter,FocusGained           * silent! lua require('scrollbar').show()
  autocmd WinLeave,FocusLost             * silent! lua require('scrollbar').clear()
augroup end

" NerdTree
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let NERDTreeQuitOnOpen = 1
let NERDTreeAutoDeleteBuffer = 1

" Open a NerdTree if no file is given as CLI argument
" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Close if the only remaining window is a nerdtree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

nmap <Leader>f :NERDTreeToggle<Enter>
nnoremap <Leader>v :NERDTreeFind<CR>

autocmd BufReadPre,FileReadPre * :NERDTreeClose

" fzf

" --column: Show column number
" --line-number: Show line number
" --no-heading: Do not show file headings in results
" --fixed-strings: Search term as a literal string
" --ignore-case: Case insensitive search
" --no-ignore: Do not respect .gitignore, etc...
" --hidden: Search hidden files and folders
" --follow: Follow symlinks
" --glob: Additional conditions for search (in this case ignore everything in the .git/ folder)
" --color: Search color options
command! -bang -nargs=* Find call fzf#vim#grep('rg --column --line-number --no-heading --fixed-strings --ignore-case --hidden --follow --glob "!.git/*" --color "always" '.shellescape(<q-args>), 1, <bang>0)"')"
nnoremap <Leader>d :Files<Enter>

