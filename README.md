# How to install:

    pip install dotfiles
    cd
    git clone this-repo
    mkdir ~/.vim/backup
    mkdir ~/.vim/swap
    dotfiles -s -C Dotfiles/dotfilesrc

# Vundle

    git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

followed by running vim and:

    :BundleInstall

# Mac OS X

 - System Preferences -> Accessibility -> Reduce motion
 - Iterm2 -> Preferences -> untick Native Full Screen
 - [Oh My Zsh](https://github.com/robbyrussell/oh-my-zsh)
 - [MacVim](http://macvim-dev.github.io/macvim/) + `ln -s /Applications/MacVim.app/Contents/bin/vim /usr/local/bin/vim`
 - [FUSE](https://osxfuse.github.io/)
 - (optional) [Anaconda](https://www.anaconda.com/download/#macos)
 - Homebrew:
   - `/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`
   - minimal Casks:
```
ccache
clang-format
cmake
coreutils
doxygen
et
ffmpeg
freetype
fzf
gflags
htop
imagemagick
ninja
node
openssl
optipng
pv
ripgrep
rlwrap
sloccount
sshfs
tldr
vim
wget
x264
x265
xsv
zsh-completions
zsh-history-substring-search
zsh-syntax-highlighting
zstd
```
