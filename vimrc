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
Plugin 'zhaocai/GoldenView.Vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
"---------------------------------------- END VUNDLE --------------------------------------"

syntax enable

set backspace=indent,eol,start          "Make backspace like other editors
let mapleader = ','                     "Set leader key to comma
set number                            "Add line numbers
set relativenumber                      "faster line movement with relative numbers
set noruler                             "remove ruler from command line
set linespace=15                        "GUI-specific line height
set nowrap                              "no line wrapping
set timeoutlen=200
set showcmd                             "display incomplete commands 
"set cursorline
set nobackup                            "don't make any backups please
set nowritebackup
set noswapfile
set noerrorbells visualbell t_bv=       "Get rid of bells!!!



"----------- Tabs and Indents ------------"
set tabstop=8
set expandtab
set softtabstop=4
set shiftwidth=4



"----------- Visuals ------------"
set t_CO=256                                            "Use 256 colors in terminal vim
colorscheme atom-dark-256				"Set color theme
set guifont=Fira_Code					"Set Font

"fake custom left padding for each window
" hi LineNr ctermbg=bg                                   
" set foldcolumn=2
" hi foldcolumn ctermbg=bg

"remove split bar
" hi vertsplit ctermfg=bg ctermbg=bg

""
" hi StatusLine ctermfg=grey ctermbg=bg
" hi StatusLineNC ctermfg=bg ctermbg=grey



"----------- Searching ------------"
set incsearch							"remove highlights
set hlsearch							"highlight all search results
set ignorecase
set smartcase



"----------- Window Splits ------------"
set splitbelow							"horizontal splits open below current buffer
set splitright							"vertical splits open to the right of current bufer

"disable GoldenView mappings
let g:goldenview__enable_default_mapping = 0 

"easier split navigation
nnoremap <C-h> <C-W>h
nnoremap <C-j> <C-W>j h
nnoremap <C-k> <C-W>k h
nnoremap <C-l> <C-W>l



"----------- Mappings ------------"
" list buffers and enter the number desired (faster buffer switching)
nnoremap <leader>z :ls<cr>:b<space>

"quick vimrc access
nmap <Leader>ev :tabedit $MYVIMRC<cr>						

"remove search highlights
nnoremap <Leader><space> :nohlsearch<cr>						

"Quick access to command mode
nmap <space> :

"Bubble single lines (kicks butt)  
nnoremap <C-I> ddkP  
nnoremap <C-N> ddp  

"fast saving
nmap <leader>w :w!<cr> 

"saving files that need sudo access
nmap <leader><leader>s :w !sudo tee %<CR>

"remap emmet. NOTE: still requires leader at the end 
let g:user_emmet_leader_key='<C-D>'



"----------- Auto-Commands ------------"
"source vimrc after save
augroup autosourcing
 	autocmd!
	autocmd BufWritePost .vimrc source %
augroup end

"----------- Reminders ------------"
"zz takes the current cursor line to the middle
"sbuffer # for splitting a buffer from a list
"<C-W> | to make current split take up full screen
"ca( or [ or { or tag to change everything inside AND the symbol

