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
plugins=(gitfast bundler macos brew catimg common-aliases fzf z)
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/local/share/zsh-history-substring-search/zsh-history-substring-search.zsh

source $ZSH/oh-my-zsh.sh

# vi mode
bindkey -v
export KEYTIMEOUT=1

export EDITOR='vim'
export PATH=/Users/gab/local/bin:/usr/local/opt/ccache/libexec:/bin:/usr/local/sbin:/usr/local/bin:$PATH:/usr/sbin
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
HISTSIZE=1000000
SAVEHIST=1000000
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

# K / kona
alias kona='rlwrap /Users/gab/kona/k'

alias wat='python -m pdb -c continue'
alias color='echo -ne "\033[0m"'

bindkey "^R" history-incremental-pattern-search-backward

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_COMMAND='rg --files --no-ignore --hidden --follow -g "!{.git,node_modules}/*" 2> /dev/null'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="$FZF_DEFAULT_COMMAND"

export PATH="/Users/gab/anaconda3/bin:$PATH:/Applications/Julia-1.1.app/Contents/Resources/julia/bin"

cpfromdevfair() {
    rsync -r --progress --rsh "ssh frc-fairjmp02 ssh" "devfair:$1" $2
}
alias mntdevfair="sshfs devfair:. devfair_home -o ssh_command='ssh -t frc-fairjmp02 ssh'"
alias cdp="cd -P"
alias gitup="git pull --rebase && git submodule sync --recursive && git submodule update --init --recursive"


test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/gab/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/gab/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/gab/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/gab/Downloads/google-cloud-sdk/completion.zsh.inc'; fi
alias gcpssh='gcloud compute --project "amiable-bonus-235803" ssh --zone "us-east1-b" "instance-1"'

eval "$(lua /Users/gab/z.lua/z.lua --init zsh enhanced once fzf)"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/gab/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/gab/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/gab/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/gab/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
#

eval "$(mcfly init zsh)"
eval "$(zoxide init zsh --cmd cd)"

export PATH=/Users/gab/.cargo/bin:$PATH
