" When started as "evim", evim.vim will already have done these settings.
if v:progname =~? "evim"
  finish
endif

set nocompatible " vIM
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

Bundle 'tpope/vim-fugitive'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/nerdcommenter'
Bundle 'scrooloose/syntastic'
Bundle 'ervandew/supertab'
Bundle 'ervandew/screen'
" Bundle 'daveray/vimclojure-easy', {'rtp': 'bundle/vimclojure-2.3.1'}
" Bundle 'VimClojure'
Bundle 'snipMate'
" Bundle 'altercation/vim-colors-solarized'
Bundle 'pkamenarsky/atea.vim'
Bundle 'kien/ctrlp.vim'
Bundle 'tpope/vim-foreplay'
Bundle 'tpope/vim-classpath'
Bundle 'guns/vim-clojure-static'


filetype plugin on

set backupdir=~/.vim/backup
set directory=~/.vim/swap

" set the completion to a menu when there is more than 1 choice
set completeopt=menu

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

if has("vms")
  set nobackup		" do not keep a backup file, use versions instead
else
  set backup		" keep a backup file
endif
set history=50		" keep 50 lines of command line history
set ruler		" show the cursor position all the time
set showcmd		" display incomplete commands
set incsearch		" do incremental searching

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
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

" To save with ctrl-s
nmap <c-s> :w<CR>
imap <c-s> <Esc>:w<CR>a

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

" Settings for VimClojure
" let vimclojure#HighlightBuiltins = 1 " Highlight Clojure's builtins
" let vimclojure#DynamicHighlighting = 1 " Highlight Clojure's builtins
" let vimclojure#NailgunServer = "127.0.0.1"
" let vimclojure#NailgunPort = "2113"
"
""let vimclojure#WantNailgun = 1 " Nailgun server
""
""let vimclojureRoot = "~/.vim/vimclojure-server-2.3.6.jar"
""let classpath = join(
""   \[".",
""   \ "src", "src/main/clojure", "src/main/resources",
""   \ "test", "src/test/clojure", "src/test/resources",
""   \ "classes", "target/classes",
""   \ "lib/*", "lib/dev/*",
""   \ "bin",
""   \],
""   \ ":")
""nmap <silent> <Leader>sc :execute "ScreenShell java -cp \"" . classpath . ":" . vimclojureRoot . "/lib/*" . "\" vimclojure.nailgun.NGServer 127.0.0.1" <cr>
""" Start a generic Clojure repl (uses screen.vim)
""nmap <silent> <Leader>sC :execute "ScreenShell java -cp \"" . classpath . "\" clojure.main" <cr>
"
""let classpath = system("lein classpath")
""nmap <silent> <Leader>sc :execute "ScreenShell java -cp \"" . classpath . "\" vimclojure.nailgun.NGServer 127.0.0.1" <cr>
"""nmap <silent> <Leader>sC :execute "ScreenShell java -cp \"" . classpath . "\" clojure.main" <cr>
