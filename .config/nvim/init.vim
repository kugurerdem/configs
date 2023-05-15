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

call plug#begin()

"Theme and view
Plug 'rafi/awesome-vim-colorschemes' " Retro Scheme

" Plugins
Plug 'tpope/vim-commentary' " For Commenting gcc & gc
Plug 'vim-airline/vim-airline'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }
Plug 'github/copilot.vim'

call plug#end()

" awesome-vim-colorschemes config
colorscheme minimalist
highlight Normal ctermbg=none
highlight NonText ctermbg=none

" MarkdownPreview Config
function OpenMarkdownPreview (url)
execute "silent ! brave --new-window " . a:url
endfunction

let g:mkdp_browser = 'firefox'
let g:mkdp_browserfunc = 'OpenMarkdownPreview'
let g:python_host_prog = '/usr/bin/python'
let g:python3_host_prog = '/usr/bin/python3'

" VimWiki Config
" Vim Wiki
let g:vimwiki_list = [{'path': '~/vimwiki/', 'syntax': 'markdown', 'ext':'.md'}]


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

