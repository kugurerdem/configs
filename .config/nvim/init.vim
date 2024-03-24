set nocompatible            " disable compatibility to old-time vi 
set showmatch               " show matching 
set hlsearch                " highlight search 
" set nohlsearch
set incsearch               " incremental search
set tabstop=4               " number of columns occupied by a tab 
set softtabstop=4           " see multiple spaces as tabstops so <BS> does the right thing
set expandtab               " converts tabs to white space
set shiftwidth=4            " width for autoindents
set autoindent              " indent a new line the same amount as the line just typed
set smartindent
set list
set listchars=trail:@
" set ignorecase
set number                  " add line numbers
set relativenumber
set clipboard=unnamedplus   " using system clipboard
set encoding=UTF-8
" set textwidth=80
set noswapfile

set foldmethod=indent
set foldlevelstart=99

" set wrap
" set textcolumn=80
" set linebreak
" nnoremap j gj
" nnoremap k gk

call plug#begin()

"Theme and view
Plug 'rafi/awesome-vim-colorschemes' " Retro Scheme

" Plugins
Plug 'tpope/vim-commentary' " For Commenting gcc & gc
Plug 'vim-airline/vim-airline'
Plug 'github/copilot.vim'

call plug#end()


let g:copilot_filetypes = {
            \ '*': v:false,
            \ 'javascript': v:true,
            \ 'python': v:true,
            \ 'sql': v:true,
            \ 'sh': v:true,
            \ 'haskell': v:true,
            \ 'gitcommit': v:true,
            \ 'vim': v:true,
            \ 'css': v:true,
            \ 'html': v:true,
            \ 'c': v:true,
            \ 'cpp': v:true,
            \ 'h': v:true,
            \ 'go': v:true,
            \ }

" awesome-vim-colorschemes config
colorscheme minimalist
highlight Normal ctermbg=none
highlight NonText ctermbg=none
highlight ColorColumn ctermbg=238

highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/

" HOTKEYS
nm <leader>c :se cc=80<CR>
nm <leader>C :se cc=0<CR>
nm <leader>n :noh<CR>

au filetype javascript nm <C-n> :!node %<CR>
au filetype javascript nm <C-l> :!npx eslint %<CR>
au filetype haskell nm <C-n> :!runhaskell %<CR>
au filetype haskell nm <C-l> :!hlint %<CR>
au filetype sh nm <C-l> :!shellcheck %<CR>
au filetype clojure nm <C-n> :!clojure %<CR>
au filetype go nm <C-n> :!go run %<CR>
au filetype go nm <C-l> :!golangci-lint run %<CR>

au filetype markdown nm <C-n> :!pandoc -s % -o %:r.pdf<CR>
