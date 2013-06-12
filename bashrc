#xset b off
set -o vi
set bell-style none

#defaults write .GlobalPreferences com.apple.mouse.scaling -1
#defaults write -g com.apple.mouse.ignoreTrackpadIfMousePresent 0

export JAVA_HOME=/Library/Java/Home
export RUBYPATH=/usr/local/Cellar/ruby/1.9.3-p374/bin
export PATH=~/bin:/usr/local/sbin:/usr/local/bin/:$PATH:/opt/local/bin:/opt/local/sbin:/Users/gabrielsynnaeve/.gem/ruby/1.8/bin:/usr/sbin:$RUBYPATH:~/local/bin:~/Library/Haskell/bin:/usr/local/share/python:/usr/local/share/npm/bin/
export DISPLAY=:0.0
export CLICOLOR=1
export LSCOLORS="gxfxcxdxbxegedabagGxGx"
export CPATH=/usr/X11R6/include
export LIBRARY_PATH=/usr/X11R6/lib:/usr/lib
export SVN_EDITOR=vim
export GIT_EDITOR=vim
export PYTHONSTARTUP="/Users/gabrielsynnaeve/.pythonrc.py"
export PYTHONPATH=/usr/local/lib/python:$PYTHONPATH:/Library/Python2.7/site-packages
export VIRTUALENV_DISTRIBUTE=true
export LC_CTYPE=fr_FR.UTF-8
export LANG=fr_FR.UTF-8
export LANGUAGE=fr_FR.UTF-8
export LC_ALL=fr_FR.UTF-8
export LC_MESSAGES=fr_FR.UTF-8
export GNUTERM="x11"
export CUDA_ROOT="/Developer/NVIDIA/CUDA-5.0/"
export HTK_BIN="/Users/gabrielsynnaeve/postdoc/htk/HTKTools/"

# shortcuts
alias scpresume="rsync --partial --progress --rsh=ssh"
alias cloj="rlwrap clj"
alias ipy="/usr/local/share/python/ipython --pylab"
alias git-serve='git daemon --reuseaddr --base-path=. --export-all'
alias tunnel_wiki='ssh -f -L 8080:cogito.ens.fr:80 cogito -N'
alias tunnel_irc='ssh -f -L 13337:irc.freenode.net:6667 cogito -N'
alias tunnel_cluster='ssh -f -L 3000:129.199.81.30:22 habilis -N && ssh -Y transtec@localhost -p 3000'
alias ssh_cluster='ssh -f -L 3000:129.199.81.30:22 habilis -N && ssh -Y gsynnaeve@localhost -p 3000'

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


PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
export PATH=$PATH:$HTK_BIN:$CUDA_ROOT/bin # HTK and CUDA
export DYLD_LIBRARY_PATH=$CUDA_ROOT/lib:$DYLD_LIBRARY_PATH

export PYLEARN2_DATA_PATH=/Users/gabrielsynnaeve/Downloads/pylearn_data #PyLearn
export PATH=$PATH:/Users/gabrielsynnaeve/labs/pylearn2/pylearn2/scripts/
