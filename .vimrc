set nocompatible
set noruler
set statusline=%t
set laststatus=2
set number
set term=screen-256color
colorscheme distinguished
"indentation
set expandtab
set shiftwidth=2
set softtabstop=2

"--------------------------------------------------
call plug#begin('~/.vim/plugged')
"--------------------------------------------------
Plug 'Valloric/YouCompleteMe'
"For node js support:
"1. install nodejs
"2. install npm
"3. in vim call :PlugInstall
"4. goto cd ~/.vim/bundle/YouCompleteMe
"5. run ./install.py --tern-completer
"6. put this example project file into project directory: (quotation marks
"around plugins and node)
"{
"	plugins:{
"		node:{}
"	}
"}
"7. type: var http = require('http'); http. - you should see completion box

  	let g:ycm_complete_in_comments_and_strings=0
    	let g:ycm_key_list_select_completion=['<C-n>', '<Down>']
      	let g:ycm_key_list_previous_completion=['<C-p>', '<Up>']
        let g:ycm_use_ultisnips_completer = 1
	let g:ycm_add_preview_to_completeopt = 1
	let g:ycm_autoclose_preview_window_after_completion = 1
	let g:ycm_always_populate_location_list = 1
"--------------------------------------------------
Plug 'vim-airline/vim-airline'
"1. Set following options in vimrc file (in this file)
"set nocompatible
"set noruler
"set statusline=%t
"set laststatus=2
"set number

"--------------------------------------------------
Plug 'vim-airline/vim-airline-themes'

"--------------------------------------------------
Plug 'tpope/vim-repeat'

"--------------------------------------------------

Plug 'sjl/gundo.vim'

"--------------------------------------------------
Plug 'scrooloose/syntastic'
	let g:syntastic_mode_map = {'mode': 'active', 'active_filetypes': ['js'], 'passive_filetypes': ['c', 'cc', 'cpp'] }
	let g:syntastic_javascript_checkers = ['jshint']

"--------------------------------------------------
Plug 'justinmk/vim-sneak', { 'for': 'javascript', 'do': 'npm install' }
  	let g:tern_show_signature_in_pum = 1
    	let g:tern_show_argument_hints = 'on_hold'
	set completeopt-=preview
        autocmd FileType javascript map <buffer> gd :TernDef<CR>
	autocmd FileType javascript nnoremap <buffer> <C-]> :TernDef<CR>

"--------------------------------------------------
Plug 'ternjs/tern_for_vim'

"--------------------------------------------------
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
  	map <leader>n :NERDTreeToggle<CR>
	autocmd vimenter * NERDTree
	"ctrl + w, w - switching between tabs
"--------------------------------------------------
Plug 'christoomey/vim-tmux-navigator'
"When using with tmux use: quotation marks around screen-256color
"in .tmux.conf
"
"set -g default-terminal screen-256color
"in .vimrc
"
"set term=screen-256color

"--------------------------------------------------
Plug 'moll/vim-bbye'
	nnoremap <silent> <leader>q :Bdelete<CR>	

Plug 'flazz/vim-colorschemes'
Plug 'pangloss/vim-javascript'     , { 'for': ['javascript'] }
Plug 'tsaleh/vim-tmux'             , { 'for': ['tmux'] }
Plug 'moll/vim-node'               , { 'for': ['javascript'] }
Plug 'elzr/vim-json'               , { 'for': ['json'] }

Plug 'nathanaelkane/vim-indent-guides'
Plug 'Raimondi/delimitMate'

call plug#end()


