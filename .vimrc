"pathogen
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

"Settings to set slime plugin target to tmux
let g:slime_target = "tmux"
let g:slime_paste_file = "$HOME/.slime_paste"

"filetype off
syntax on
filetype plugin on

"defaults for indentation
filetype plugin indent on
set tabstop=4
set expandtab
set shiftwidth=4
set softtabstop=4

"Show line numbers
set number

"Background settings to make colors brighter
set background=dark

"Incremental search
set incsearch

"Highlight search results
set hlsearch

"Setting the colorscheme
colorscheme Mustang
set t_Co=256

"Key binding to remove highlights 
nmap <silent> <C-N> :silent noh<CR>

"auto word wrapping
set textwidth=100

"For temporary files and backups. They will be stored in the /tmp directory
set backupdir=/tmp
set directory=/tmp

"Tab key inserts spaces instead.
"set expandtab
"

" Key bindings
let g:user_zen_expandabbr_key='<C-k>'
