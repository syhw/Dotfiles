# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/gab/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
#ZSH_THEME="robbyrussell"
ZSH_THEME="agnoster"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(gitfast bundler macos brew catimg common-aliases)

source $ZSH/oh-my-zsh.sh

# vi mode
bindkey -v

export KEYTIMEOUT=1
export EDITOR='nvim'
export PATH=/Users/gab/local/bin:/usr/local/opt/ccache/libexec:/bin:/usr/local/sbin:/usr/local/bin:$PATH:/usr/sbin
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
export PATH=/usr/local/bin:/Users/gab/.cargo/bin:$PATH

# history things
HISTFILE="$HOME/.zsh_history"
HISTSIZE=1000000
SAVEHIST=1000000
setopt BANG_HIST                 # Treat the '!' character specially during expansion.
setopt EXTENDED_HISTORY          # Write the history file in the ":start:elapsed;command" format.
setopt INC_APPEND_HISTORY        # Write to the history file immediately, not when the shell exits.
setopt SHARE_HISTORY             # Share history between all sessions.
setopt HIST_EXPIRE_DUPS_FIRST    # Expire duplicate entries first when trimming history.
setopt HIST_IGNORE_DUPS          # Don't record an entry that was just recorded again.
setopt HIST_SAVE_NO_DUPS         # Don't write duplicate entries in the history file.
setopt HIST_REDUCE_BLANKS        # Remove superfluous blanks before recording entry.
setopt HIST_VERIFY               # Don't execute immediately upon history expansion.
setopt HIST_BEEP                 # Beep when accessing nonexistent history.

# completions
fpath=(/usr/local/share/zsh-completions $fpath)
# zsh syntax highlight
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# zsh substring search
source /opt/homebrew/share/zsh-history-substring-search/zsh-history-substring-search.zsh

# aliases
alias amke="make"
alias fgfg="fg"
alias wat='python -m pdb -c continue'
alias color='echo -ne "\033[0m"'
alias cdp="cd -P"
alias gitup="git pull --rebase && git submodule sync --recursive && git submodule update --init --recursive"
alias mm='micromamba'
alias nv='nvim'

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
alias gcpssh='gcloud compute --project "amiable-bonus-235803" ssh --zone "us-east1-b" "instance-1"'

unalias fd
eval "$(zoxide init zsh)"
source <(fzf --zsh)
eval "$(mcfly init zsh)"
eval "$(mcfly-fzf init zsh)"


# >>> mamba initialize >>>
# !! Contents within this block are managed by 'micromamba shell init' !!
export MAMBA_EXE='/opt/homebrew/bin/micromamba';
export MAMBA_ROOT_PREFIX='/Users/gab/.local/share/mamba';
__mamba_setup="$("$MAMBA_EXE" shell hook --shell zsh --root-prefix "$MAMBA_ROOT_PREFIX" 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__mamba_setup"
else
    alias micromamba="$MAMBA_EXE"  # Fallback on help from micromamba activate
fi
unset __mamba_setup
# <<< mamba initialize <<<
