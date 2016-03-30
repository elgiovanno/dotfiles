set nocompatible						"Set Vim to not be compatible with vi. This is better
filetype off							"required for Vundle


"------------------------------------------ VUNDLE -----------------------------------------"
set rtp+=~/.vim/bundle/Vundle.vim			"Set the runtime path to include Vundle and initialize
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'				"let Vundle manage Vundle, required
Plugin 'tpope/vim-vinegar'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'vim-scripts/AutoClose'
Plugin 'tpope/vim-surround'
Plugin 'tomtom/tcomment_vim'
Plugin 'mattn/emmet-vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
"---------------------------------------- END VUNDLE --------------------------------------"

syntax enable

set backspace=indent,eol,start			"Make backspace like other editors
let mapleader = ','						"Set leader key to comma
set number								"Add line numbers
set linespace=15						"GUI-specific line height
set tabstop=4						    "four tab spaces
set softtabstop=4
set shiftwidth=4
set tabstop=4
set softtabstop=4
set shiftwidth=4
set smartindent
set smarttab
set autoindent
set expandtab
set autoread
set incsearch
set ignorecase
set smartcase
set nowrap
set autoread
set timeoutlen=200
set showcmd                             "display incomplete commands 
"set cursorline
set nobackup                            "don't make any backups please
set nowritebackup
set noswapfile



"----------- Visuals ------------"
set t_CO=256							"Use 256 colors in terminal vim
colorscheme atom-dark-256				"Set color theme
set guifont=Fira_Code					"Set Font



"----------- Searching ------------"
set hlsearch							"highlight all search results
set incsearch							"remove highlights
set ignorecase
set smartcase



"----------- Window Splits ------------"
set splitbelow							"horizontal splits open below current buffer
set splitright							"vertical splits open to the right of current bufer

"easier split navigation
nmap <C-h> <C-w>h  					
nmap <C-j> <C-w>j  
nmap <C-k> <C-w>k  
nmap <C-l> <C-w>l



"----------- Mappings ------------"
" list buffers and enter the number desired (faster buffer switching)
nnoremap <leader>z :ls<cr>:b<space>

"quick vimrc access
nmap <Leader>ev :tabedit $MYVIMRC<cr>						

"remove search highlights
nmap <Leader><space> :nohlsearch<cr>						

"Quick access to command mode
nmap <space> :

"Bubble single lines (kicks butt)  
nnoremap <C-B> ddkP  
nnoremap <C-A> ddp  

"fast saving
nmap <leader>w :w!<cr> 

"saving files that need sudo access
nmap <leader><leader>s :w !sudo tee %<CR>



"----------- Auto-Commands ------------"
"source vimrc after save
augroup autosourcing
	autocmd!
	autocmd BufWritePost .vimrc source %
augroup end
