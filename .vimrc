" set terminal colors to 256
set t_Co=256

" turn off vi compatibility
set nocompatible

" enable filetypes
filetype on
filetype plugin on
filetype indent on
" turn sytax on
syntax on
" set autowrite
set autowrite
"Display current cursor position in lower right corner
set ruler
"Set a better mapleader
let mapleader=","
set timeoutlen=500
" set the colorscheme for VIM
colorscheme twilight
" Set font type and size.
set guifont=Monospace\ 10
" Set the Tab Spacing
set shiftwidth=2
set tabstop=2
set expandtab
set autoindent
" show the command in the bottom right porition of the screen
set showcmd
" Enable normal backspace operation
set backspace=2
set backspace=indent,eol,start

" Set <F5> to execute the current script in Python
autocmd BufRead *.py nmap <F5> :!python %<CR>

set showmatch "Show matching bracets when text indicator is over them

set si

set hls
set lbr
set number
set smartindent
set laststatus=2
" set better line wrapping
set wrap
"set textwidth=79
set formatoptions=qrn1
" Highlight searching
set hlsearch
" Enable code folding
set foldenable
" hide mouse when typing
set mousehide
" shortcut for editing vimrc
nmap <leader>ev :tabedit $MYVIMRC<cr>
"Map code completion to , + tab
imap <leader><tab> <C-x><C-o>
"More useful command-line completion
set wildmenu
set wildmode=list:longest
set completeopt=longest,menuone
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
inoremap <expr> <C-n> pumvisible() ? '<C-n>' : '<C-n><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'
inoremap <expr> <M-,> pumvisible() ? '<C-n>' : '<C-x><C-o><C-n><C-p><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'
" bubble text
nmap <C-Up> ddkP
nmap <C-Down> ddp
" bubble multiple lines
vmap <C-Up> xkP'[V'[
vmap <C-Down> xp'[V']
" Source the vimrc file after saving it. This way, you don't have to reload Vim
" to see the changes
if has("autocmd")
  augroup myvimrchooks
    au!
    autocmd bufwritepost .vimrc source ~/.vimrc
  augroup END
endif
