# How to install:

    pip install dotfiles
    cd
    git clone this-repo
    mkdir ~/.vim/backup
    mkdir ~/.vim/swap
    dotfiles -s -C Dotfiles/dotfilesrc

# Optional

    git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

followed by running vim and:
    
    :BundleInstall

Also, for Clojure:
    
    cp ~/Dotfiles/vim-cloj.sh /usr/local/bin/
    chmod u+x /usr/local/bin/vim-cloj.sh

and the vimclojure/server dependency for leiningen project.clj:

    :dev-dependencies [[vimclojure/server "2.3.6"]]

