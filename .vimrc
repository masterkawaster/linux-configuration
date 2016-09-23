"set nocompatible
"set noruler
"set statusline=%t
"set laststatus=2
"set number
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
set nocompatible
set noruler
set statusline=%t
set laststatus=2
set number

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


"== simple sets for haskell - to be determined if useful also in javascript ==
"syntax on
"filetype plugin indent on

"set nocompatible
"set number
"set nowrap
"set showmode
"set tw=80
"set smartcase
"set smarttab
"set smartindent
"set autoindent
"set softtabstop=2
"set shiftwidth=2
"set expandtab
"set incsearch
"set mouse=a
"set history=1000
"set clipboard=unnamedplus,autoselect

"set completeopt=menuone,menu,longest

"set wildignore+=*\\tmp\\*,*.swp,*.swo,*.zip,.git,.cabal-sandbox
"set wildmode=longest,list,full
"set wildmenu
"set completeopt+=longest

"set t_Co=256

"set cmdheight=1



" == syntastic ==already defined for js


"map <Leader>s :SyntasticToggleMode<CR>

"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 0
"let g:syntastic_check_on_open = 0
"let g:syntastic_check_on_wq = 0

Plug 'ghcmod-vim'  , { 'for': ['haskell'] }
" * Displaying the type of sub-expressions (ghc-mod type)
" * Displaying error/warning messages and their locations (ghc-mod check and ghc-mod lint)
" * Displaying the expansion of splices (ghc-mod expand)
" * Insert split function cases (ghc-mod split)
" * Completions are supported by another plugin. See neco-ghc .

 map <silent> tw :GhcModTypeInsert<CR>
 map <silent> ts :GhcModSplitFunCase<CR>
 map <silent> tq :GhcModType<CR>
 map <silent> te :GhcModTypeClear<CR>

Plug 'ervandew/supertab'
"Supertab is a vim plugin which allows you to use <Tab> for all your insert
"completion needs (:help ins-completion).

 let g:SuperTabDefaultCompletionType = '<c-x><c-o>'

if has("gui_running")
  imap <c-space> <c-r>=SuperTabAlternateCompletion("\<lt>c-x>\<lt>c-o>")<cr>
else " no gui
  if has("unix")
    inoremap <Nul> <c-r>=SuperTabAlternateCompletion("\<lt>c-x>\<lt>c-o>")<cr>
  endif
endif

Plug 'eagletmt/neco-ghc'  , { 'for': ['haskell'] }
"A completion plugin for Haskell, using ghc-mod

let g:haskellmode_completion_ghc = 1
autocmd FileType haskell setlocal omnifunc=necoghc#omnifunc

" == nerd-tree ==already defined
"
"           map <Leader>n :NERDTreeToggle<CR>
"
"           " == tabular ==
"
"           let g:haskell_tabular = 1
"
"           vmap a= :Tabularize /=<CR>
"           vmap a; :Tabularize /::<CR>
"           vmap a- :Tabularize /-><CR>
"           vmap a, :Tabularize /<-<CR>
"           vmap al :Tabularize /[\[\\|,]<CR>
"
Plug 'ctrlpvim/ctrlp.vim'
"Full path fuzzy file, buffer, mru, tag, ... finder for Vim.
"
"Written in pure Vimscript for MacVim, gVim and Vim 7.0+.
"Full support for Vim's regexp as search patterns.
"Built-in Most Recently Used (MRU) files monitoring.
"Built-in project's root finder.
"Open multiple files at once.
"Create new files and directories.
"Extensible.

"Basic Usage
"
"Run :CtrlP or :CtrlP [starting-directory] to invoke CtrlP in find file mode.
"Run :CtrlPBuffer or :CtrlPMRU to invoke CtrlP in find buffer or find MRU file
"mode.
"Run :CtrlPMixed to search in Files, Buffers and MRU files at the same time.
"Check :help ctrlp-commands and :help ctrlp-extensions for other commands.

map <silent> <Leader>t :CtrlP()<CR>
noremap <leader>b<space> :CtrlPBuffer<cr>
let g:ctrlp_custom_ignore = '\v[\/]dist$'
let $PATH = $PATH . ':' . expand('~/.local/bin')


call plug#end()


