" When started as "evim", evim.vim will already have done these settings.
if v:progname =~? "evim"
  finish
endif

set nocompatible " vIM
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
set rtp+=/usr/local/opt/fzf
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

" Plugin 'scrooloose/nerdtree'
" Plugin 'scrooloose/nerdcommenter'
Plugin 'tpope/vim-fugitive'
Plugin 'w0rp/ale'
Plugin 'ervandew/screen'
Plugin 'snipMate'
" Plugin 'SirVer/ultisnips' TODO use
Plugin 'pkamenarsky/atea.vim'
Plugin 'rking/ag.vim'
Plugin 'bling/vim-airline'
Plugin 'mbbill/undotree'
Plugin 'junegunn/vim-easy-align'
Plugin 'valloric/youcompleteme'
Plugin 'rdnetto/YCM-Generator'
Plugin 'mindriot101/vim-yapf'
Plugin 'rhysd/vim-clang-format'
Plugin 'lervag/vimtex'

call vundle#end()

filetype plugin on
filetype plugin indent on

set backupdir=~/.vim/backup
set directory=~/.vim/swap

" set the completion to a menu when there is more than 1 choice
"set completeopt=menu

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

if has("vms")
  set nobackup		" do not keep a backup file, use versions instead
else
  set backup		" keep a backup file
endif
set history=100		" keep 100 lines of command line history
set ruler		" show the cursor position all the time
set showcmd		" display incomplete commands
set incsearch		" do incremental searching

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
  set t_Co=256
endif

" Only do this part when compiled with support for autocommands.
if has("autocmd")

  " Enable file type detection.
  " Use the default filetype settings, so that mail gets 'tw' set to 72,
  " 'cindent' is on in C files, etc.
  " Also load indent files, to automatically do language-dependent indenting.
  filetype plugin indent on

  " Put these in an autocmd group, so that we can delete them easily.
  augroup vimrcEx
  au!

  " For all text files set 'textwidth' to 78 characters.
  autocmd FileType text setlocal textwidth=78

  " When editing a file, always jump to the last known cursor position.
  " Don't 60 
  " do it when the position is invalid or when inside an event handler
  " (happens when dropping a file on gvim).
  autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal g`\"" |
    \ endif

  augroup END

else

  set autoindent		" always set autoindenting on

endif " has("autocmd")

set softtabstop=4
set shiftwidth=4
set expandtab
set tabstop=4
set background=dark
" colorscheme molokai / delek / slate
colorscheme solarized

if has("statusline")
    set statusline=%<%f\ %h%m%r%=%{\"[\".(&fenc==\"\"?&enc:&fenc).((exists(\"+bomb\")\ &&\ &bomb)?\",B\":\"\").\"]\ \"}%k\ %-14.(%l,%c%V%)\ %P
endif

if v:version >= 703 
    set colorcolumn=80 " set a colored delimiter at 80 char
endif

" Unbind the cursor keys in insert, normal and visual modes.
for prefix in ['i', 'n', 'v']
    for key in ['<Up>', '<Down>', '<Left>', '<Right>']
        exe prefix . "noremap " . key . " <Nop>"
    endfor
endfor

autocmd BufRead *.tex setlocal spell spelllang=en_us

set suffixesadd=.mkd
augroup mkd
    autocmd BufRead *.mkd  set ai formatoptions=tcroqn2 comments=n:&gt;
augroup END

if has("multi_byte")
    set encoding=utf-8
    setglobal fileencoding=utf-8
    "set bomb
    set termencoding=utf-8
    " set fileencodings=iso-8859-1,utf-8
else
    echoerr "Sorry, this version of (g)vim was not compiled with +multi_byte"
endif

augroup ml
    au BufRead,BufNewFile *.ml set fileencoding=latin1
augroup END

set laststatus=2

set undolevels=10000
if has("persistent_undo")
    set undoreload=10000
    set undodir=~/.vim/undo
    set undofile
endif

" YCM options:
"let g:ycm_register_as_syntastic_checker = 1 "default 1
"let g:Show_diagnostics_ui = 1 "default 1
"let g:ycm_enable_diagnostic_signs = 1
"let g:ycm_enable_diagnostic_highlighting = 0
"let g:ycm_always_populate_location_list = 1 "default 0
"let g:ycm_open_loclist_on_ycm_diags = 1 "default 1
"let g:ycm_python_binary_path = 'python'

" syntastic options
"let g:syntastic_python_checkers = ['flake8']

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)


set noerrorbells 
set novisualbell
set t_vb=
autocmd! GUIEnter * set vb t_vb=


