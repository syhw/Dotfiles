#xset b off
set -o vi
set bell-style none

#defaults write .GlobalPreferences com.apple.mouse.scaling -1
#defaults write -g com.apple.mouse.ignoreTrackpadIfMousePresent 0

export JAVA_HOME=/Library/Java/Home
export PATH=/usr/local/sbin:/usr/local/bin/:$PATH:/opt/local/bin:/opt/local/sbin:/Users/gabrielsynnaeve/.gem/ruby/1.8/bin:~/local/bin:~/Library/Haskell/bin:/usr/local/ada-4.3/bin:/usr/local/share/python:/usr/sbin
export DISPLAY=:0.0
export CLICOLOR=1
export LSCOLORS="gxfxcxdxbxegedabagGxGx"
export CPATH=/usr/X11R6/include
export LIBRARY_PATH=/usr/X11R6/lib:/usr/lib
export SVN_EDITOR=vim
export GIT_EDITOR=vim
export PYTHONSTARTUP="/Users/gabrielsynnaeve/.pythonrc.py"
export PYTHONPATH=$PYTHONPATH:/Library/Python2.7/site-packages
export LC_CTYPE=fr_FR.UTF-8
export LANG=fr_FR.UTF-8
export LANGUAGE=fr_FR.UTF-8
export LC_ALL=fr_FR.UTF-8
export LC_MESSAGES=fr_FR.UTF-8

# shortcuts
alias scpresume="rsync --partial --progress --rsh=ssh"
alias cloj="rlwrap clj"
alias ipy="/usr/local/share/python/ipython -pylab"
alias git-serve='git daemon --reuseaddr --base-path=. --export-all'
alias bwiki="surf file:///Users/gabrielsynnaeve/labs/mkd-wiki/html/index &"
alias scwiki="surf http://wiki.teamliquid.net/starcraft/Main_Page &"

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

