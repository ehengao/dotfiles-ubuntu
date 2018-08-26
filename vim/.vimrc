" Make Vim more useful
set nocompatible
" set t_Co=256
set path+=**
"  " in case t_Co alone doesn't work, add this as well:
" let &t_AB="\e[48;5;%dm"
" Vundle manager
set termguicolors
source ~/.vim/startup/vundle.vim
" Enable syntax highlighting
set tabstop=4
set shiftwidth=4
syntax on
let g:onedark_termcolors = 256
let g:onedark_terminal_italics= 1
colorscheme onedark
set background=dark
" colorscheme kalisi
" Use the OS clipboard by default (on versions compiled with `+clipboard`)
set clipboard=unnamed
" Enhance command-line completion
set wildmenu
" Allow cursor keys in insert mode
" set esckeys
" Allow backspace in insert mode
set backspace=indent,eol,start
" Optimize for fast terminal connections
set ttyfast
" Add the g flag to search/replace by default
set gdefault
" Use UTF-8 without BOM
set encoding=utf-8 " nobomb
" Change mapleader
let mapleader=","
" Don’t add empty newlines at the end of files
set binary
" set noeol
" Centralize backups, swapfiles and undo history
set backupdir=~/.vim/backups
set directory=~/.vim/swaps
if exists("&undodir")
	set undodir=~/.vim/undo
endif

" Don’t create backups when editing files in certain directories
set backupskip=/tmp/*,/private/tmp/*

" Respect modeline in files
set modeline
set modelines=4
" Enable per-directory .vimrc files and disable unsafe commands in them
" set exrc
" set secure
" Enable line numbers
set number
" Highlight current line
set cursorline
" Make tabs as wide as two spaces
" set tabstop=2
" Show “invisible” characters
set lcs=tab:▸\ ,space:·,eol:¬,nbsp:_
set list
" Highlight searches
set hlsearch
" Ignore case of searches
" set ignorecase
" Highlight dynamically as pattern is typed
set incsearch
" Always show status line
set laststatus=2
" Enable mouse in all modes
set mouse=a
" Disable error bells
set noerrorbells
" Don’t reset cursor to start of line when moving around.
set nostartofline
" Show the cursor position
set ruler
" Don’t show the intro message when starting Vim
" set shortmess=atI
" Show the current mode
set showmode
" Show the filename in the window titlebar
set title
" Show the (partial) command as it’s being typed
set showcmd
" Use relative line numbers


if exists("&relativenumber")
	set relativenumber
	au BufReadPost * set relativenumber
endif
" Start scrolling three lines before the horizontal window border
set scrolloff=5

" custome keyboard bindings
source ~/.vim/startup/mappings.vim

" plugin specific configs
" source ~/.vim/bundle/python-mode/plugin/pymode.vim
source ~/.vim/startup/plugin-config.vim

" Point YCM to the Pipenv created virtualenv, if possible
" At first, get the output of 'pipenv --venv' command.
let pipenv_venv_path = system('pipenv --venv')
" The above system() call produces a non zero exit code whenever
" a proper virtual environment has not been found.
" So, second, we only point YCM to the virtual environment when
" the call to 'pipenv --venv' was successful.
" Remember, that 'pipenv --venv' only points to the root directory
" of the virtual environment, so we have to append a full path to
" the python executable.
if shell_error == 0
  let venv_path = substitute(pipenv_venv_path, '\n', '', '')
  let g:ycm_python_binary_path = venv_path . '/bin/python'
else
  let g:ycm_python_binary_path = 'python'
endif


highlight CursorLine  cterm=underline gui=underline
" guibg=DarkSeaGreen3DarkMagenta
set expandtab
au BufNewFile,BufRead .bash_* set filetype=sh
" autocmd BufWritePre *.py execute ':Black'
let g:UltiSnipsExpandTrigger=";;"
let g:UltiSnipsJumpForwardTrigger="<C-j>"
let g:UltiSnipsJumpBackwardTrigger="<C-k>"
let g:black_linelength=79
let g:black_skip_string_normalization=1
let g:vim_isort_python_version='python3'
