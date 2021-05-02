source ~/.vimrc

call plug#begin()
" Git
Plug 'tpope/vim-fugitive'

" Bottom Status Lines
Plug 'vim-airline/vim-airline' | Plug 'vim-airline/vim-airline-themes'

" fzf
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Misc
Plug 'roxma/nvim-completion-manager'
Plug 'SirVer/ultisnips'
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'honza/vim-snippets'
Plug 'brooth/far.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'mhinz/vim-startify'
Plug 'psliwka/vim-smoothie'
Plug 'ryanoasis/vim-devicons'
Plug 'godlygeek/tabular' " tabular plugin must come before vim-markdown
Plug 'plasticboy/vim-markdown' | Plug 'JamshedVesuna/vim-markdown-preview'
Plug 'Xuyuanp/scrollbar.nvim'
Plug 'liuchengxu/vim-which-key', { 'on': ['WhichKey', 'WhichKey!'] }
call plug#end()
