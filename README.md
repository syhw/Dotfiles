# How to install:

    pip install dotfiles
    cd
    git clone this-repo
    mkdir ~/.vim/backup
    mkdir ~/.vim/swap
    dotfiles -s -C Dotfiles/dotfilesrc

# Vundle

    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
    vim +PluginInstall +qall

# Mac OS X

 - System Preferences -> {Accessibility -> Zoom} and {Trackpad -> Scoll & Zoom}
 - Iterm2 -> Preferences -> untick Native Full Screen
 - [Oh My Zsh](https://github.com/robbyrussell/oh-my-zsh)
 - [MacVim](http://macvim-dev.github.io/macvim/) + `ln -s /Applications/MacVim.app/Contents/bin/vim /usr/local/bin/vim`
 - [FUSE](https://osxfuse.github.io/)
 - (optional) [Anaconda](https://www.anaconda.com/download/#macos)
 - [Karabiner-Elements](https://karabiner-elements.pqrs.org/) with "For all devices" caps_lock -> escape, and "Apple Internal Keyboard / ..." fn -> left_control and left_control -> fn
 - (optional) [Rectangle](https://rectangleapp.com/)
 - (optional) `git clone git@github.com:skywind3000/z.lua.git`
 - Homebrew:
   - `/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`
   - minimal Casks:
```
brew install ccache clang-format cmake coreutils doxygen ffmpeg freetype fzf gflags htop imagemagick ninja node openssl optipng pv ripgrep rlwrap sloccount sshfs tldr vim wget x264 x265 xsv zsh-completions zsh-history-substring-search zsh-syntax-highlighting zstd cargo
```
   - optional:
```
brew tap cantino/mcfly && brew install zoxide mcfly
```
 - fd and ripgrep: `cargo install fd-find ripgrep`
 - config term: solarized dark + darker background + `git clone https://github.com/powerline/fonts` + copy Meslo Dotted in font book + replace font in profile/text for Meslo LG S, font size 15 + in profile/terminal silence bell
