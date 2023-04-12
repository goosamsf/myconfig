

"                                            / _|
"   __ _  ___   ___  ___  __ _ _ __ ___  ___| |_ 
"  / _` |/ _ \ / _ \/ __|/ _` | '_ ` _ \/ __|  _|
" | (_| | (_) | (_) \__ \ (_| | | | | | \__ \ |  
"  \__, |\___/ \___/|___/\__,_|_| |_| |_|___/_|  
"   __/ |                                        
" _|___/  _______ __  __ _____   _____           
" \ \    / /_   _|  \/  |  __ \ / ____|          
"  \ \  / /  | | | \  / | |__) | |               
"   \ \/ /   | | | |\/| |  _  /| |               
"    \  /   _| |_| |  | | | \ \| |____           
"     \/   |_____|_|  |_|_|  \_\\_____|          

"Basic Setting
set incsearch
set ruler
set hidden
set enc=utf-8
set fenc=utf-8
set termencoding=utf-8
set nocompatible
set wildmenu
set wildignorecase
set wildignore=\*.git/
set autoindent
set smartindent
set tabstop=4        " tab width is 4 spaces
set shiftwidth=4     " indent also with 4 spaces
"set expandtab        " expand tabs to spaces
set hidden
"set textwidth=75
syntax on
set number relativenumber
set showmatch
set splitbelow splitright
hi MatchParen cterm=none ctermbg=white ctermfg=red
"Set up Leader Key

nnoremap <Space> <Nop> 
let mapleader = " " "Set space bar is leader key. 

nnoremap <leader>s :w<cr> 
nnoremap <leader><Tab> :bn<cr>
nnoremap <leader>` :bp<cr>
nnoremap <leader>l :argadd 
"Shorve file tcutting spve file live file tve file  navigation, saving a keypre:
    map <C-h> <C-w>h
    map <C-j> <C-w>j
    map <C-k> <C-w>k
    map <C-l> <C-w>l

tnoremap <C-h> <C-\><C-n><C-w>h
tnoremap <C-l> <C-\><C-n><C-w>l
tnoremap <C-j> <C-\><C-n><C-w>j
tnoremap <C-k> <C-\><C-n><C-w>k


"Ctrl-d + zz combination
"Ctrl-u + zz combination
    nnoremap <C-d> <C-d>zz
    nnoremap <C-u> <C-u>zz

"Text Formatting
nnoremap Q gqgq


"Copy and paste from other program to vim
vnoremap <C-c> "+y


"abbreviation
