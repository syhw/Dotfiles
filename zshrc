# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/gab/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
#ZSH_THEME="robbyrussell"
ZSH_THEME="agnoster"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(gitfast bundler osx docker brew web-search vi-mode zsh-completions catimg common-aliasest)
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/local/share/zsh-history-substring-search/zsh-history-substring-search.zsh

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# vi mode
bindkey -v
export KEYTIMEOUT=1

# good defaults gl
export EDITOR='vim'
export PATH=/Users/gab/local/bin:/bin:/usr/local/sbin:/usr/local/bin:$PATH:/usr/sbin
#export LIBRARY_PATH=/usr/X11R6/lib:/usr/lib
export SVN_EDITOR=$EDITOR
export GIT_EDITOR=$EDITOR
export LC_CTYPE=en_US.UTF-8
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export LC_MESSAGES=en_US.UTF-8
export TERM="xterm-256color"
export DEFAULT_USER="gab"
export LSCOLORS="gxfxcxdxbxegedabagGxGx"
export PYTHONSTARTUP="/Users/gab/.pythonrc.py"
export PYTHONPATH=/usr/local/lib/python:$PYTHONPATH:/Library/Python2.7/site-packages
export VIRTUALENV_DISTRIBUTE=true

# history things
HISTFILE="$HOME/.zsh_history"
HISTSIZE=10000
SAVEHIST=10000
setopt BANG_HIST                 # Treat the '!' character specially during expansion.
setopt EXTENDED_HISTORY          # Write the history file in the ":start:elapsed;command" format.
setopt INC_APPEND_HISTORY        # Write to the history file immediately, not when the shell exits.
setopt SHARE_HISTORY             # Share history between all sessions.
setopt HIST_EXPIRE_DUPS_FIRST    # Expire duplicate entries first when trimming history.
setopt HIST_IGNORE_DUPS          # Don't record an entry that was just recorded again.
#setopt HIST_IGNORE_ALL_DUPS      # Delete old recorded entry if new entry is a duplicate.
#setopt HIST_FIND_NO_DUPS         # Do not display a line previously found.
#setopt HIST_IGNORE_SPACE         # Don't record an entry starting with a space.
setopt HIST_SAVE_NO_DUPS         # Don't write duplicate entries in the history file.
setopt HIST_REDUCE_BLANKS        # Remove superfluous blanks before recording entry.
setopt HIST_VERIFY               # Don't execute immediately upon history expansion.
setopt HIST_BEEP                 # Beep when accessing nonexistent history.

# typos aliases
alias amke="make"
alias fgfg="fg"

# completions
fpath=(/usr/local/share/zsh-completions $fpath)

# docker things
alias dckrun="docker run --user torchcraft --rm --privileged -it -p 5902:5900 7a85744faaa8 bash"

# K / kona
alias kona='rlwrap /Users/gab/local/bin/k'

# added by Anaconda3 4.2.0 installer
export PATH="/Users/gab/anaconda3/bin:$PATH"

# my include and bin
export PATH="$PATH:/Users/gab/local/bin"
export CPLUS_INCLUDE_PATH="$CPLUS_INCLUDE_PATH:/Users/gab/local/include"
export C_INCLUDE_PATH="$C_INCLUDE_PATH:/Users/gab/local/include"
export LIBRARY_PATH="$LIBRARY_PATH:/Users/gab/local/lib"
export RPATH="$RPATH:/Users/gab/local/lib"
export DYLD_LIBRARY_PATH="$DYLD_LIBRARY_PATH:/Users/gab/local/lib"
alias bwenv_openbw="BWAPI_CONFIG_AI__AI=/Users/gab/torchcraft/BWEnv/build/BWEnv.dylib BWAPILauncher"

. /Users/gab/torch/install/bin/torch-activate
