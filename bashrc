#xset b off
set -o vi
set bell-style none

#defaults write .GlobalPreferences com.apple.mouse.scaling -1
#defaults write -g com.apple.mouse.ignoreTrackpadIfMousePresent 0

export JAVA_HOME=/Library/Java/Home
export RUBYPATH=/usr/local/Cellar/ruby/1.9.3-p374/bin
export PATH=/Users/gabrielsynnaeve/local/bin:/bin:/usr/local/sbin:/usr/local/bin:$PATH:/Users/gabrielsynnaeve/.gem/ruby/1.8/bin:/usr/sbin:$RUBYPATH:~/bin:~/Library/Haskell/bin:/usr/local/share/npm/bin
#export DISPLAY=:0.0
export CLICOLOR=1
export LSCOLORS="gxfxcxdxbxegedabagGxGx"
export CPATH=/usr/X11R6/include
export LIBRARY_PATH=/usr/X11R6/lib:/usr/lib
export EDITOR=vim
export SVN_EDITOR=$EDITOR
export GIT_EDITOR=$EDITOR
export PYTHONSTARTUP="/Users/gab/.pythonrc.py"
export PYTHONPATH=/usr/local/lib/python:$PYTHONPATH:/Library/Python2.7/site-packages
export VIRTUALENV_DISTRIBUTE=true
export GOPATH=~/gocode
#export LC_CTYPE=fr_FR.UTF-8
#export LANG=fr_FR.UTF-8
#export LANGUAGE=fr_FR.UTF-8
#export LC_ALL=fr_FR.UTF-8
#export LC_MESSAGES=fr_FR.UTF-8
export LC_CTYPE=en_US.UTF-8
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export LC_MESSAGES=en_US.UTF-8
export GNUTERM="x11"
export TERM="xterm-256color"
export HOMEBREW_GITHUB_API_TOKEN=f464d6cf00568f09cf0a9d488b3e194849b59e5f

# shortcuts
alias scpresume="rsync --partial --progress --rsh=ssh"
alias cloj="rlwrap clj"
alias ipy="ipython --pylab"
alias git-serve='git daemon --reuseaddr --base-path=. --export-all'
alias tunnel_wiki='ssh -f -L 8080:cogito.ens.fr:80 cogito -N'
alias tunnel_irc='ssh -f -L 13337:irc.freenode.net:6667 cogito -N'
alias tunnel_cluster='ssh -f -L 3000:129.199.81.30:22 habilis -N && ssh -Y transtec@localhost -p 3000'
alias ssh_cluster='ssh -Y -f -L 3000:129.199.81.30:22 habilis -N && ssh -Y gsynnaeve@localhost -p 3000'
alias torchpkg='luarocks --server=https://raw.githubusercontent.com/torch/rocks/master'
alias py3=python3

# typos
alias amke='make'
alias fgfg='fg'

function range () { 
    if [ $1 -ge $2 ]; then
        return
    fi
    a=$1
    b=$2
    while [ $a -le $b ]; do
        echo $a;
        a=$(($a+1));
    done
} 

export PS1="\w \[\033[0;35m\]$\[\033[0m\] "


export PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
export CUDA_ROOT="/Developer/NVIDIA/CUDA-6.5"
export HTK_BIN="/Users/gabrielsynnaeve/postdoc/htk/HTKTools"
export PATH=$CUDA_ROOT/bin:$PATH:$HTK_BIN # HTK and CUDA
#export DYLD_LIBRARY_PATH=$CUDA_ROOT/lib:$DYLD_LIBRARY_PATH
#export DYLD_FALLBACK_LIBRARY_PATH=$DYLD_FALLBACK_LIBRARY_PATH:"/Users/gabrielsynnaeve/anaconda/lib"

# Pylearn 2
export PYLEARN2_DATA_PATH=/Users/gabrielsynnaeve/postdoc/datasets
export PATH=$PATH:/Users/gabrielsynnaeve/labs/pylearn2/pylearn2/scripts
export PATH=$PATH:/usr/local/texlive/2014/bin/x86_64-darwin

# Go language
export PATH="$PATH:$GOPATH/bin"

# Vamp/Vampy
export VAMP_PATH=/Users/gabrielsynnaeve/Library/Audio/Plug-Ins/Vamp
export VAMPY_PATH=$VAMP_PATH
export PYTHONPATH=$PYTHONPATH:$VAMPY_PATH
export PYLEARN2_VIEWER_COMMAND="open -W"

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

. /Users/gab/torch/install/bin/torch-activate

. /Users/gab/torch_mpi/env.sh

alias dckrun='docker run --user torchcraft --rm --privileged -it -p 5902:5900 7a85744faaa8 bash'
