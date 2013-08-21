# vim-config

This is heavily based on the Pivotal `vim-config`. Previously it existed as a fork, but it's not only
diverged incredibly far, but also has different goals, so I broke it into its own repository.

All plugins exist as submodules, so be sure to follow the installation directions that follow.

As far as I know, this config will work on OSX, supports the mouse in iTerm (even on large (27") monitors),
and can be run in gvim or over an ssh session and has tmux support.

## To Install

(Re)move ~/.vim and ~/.vimrc if you have them already, and run:

    git clone git://github.com/spikegrobstein/vim-config-new.git ~/.vim
    cd ~/.vim
    git submodule update --init
    ln -s ~/.vim/vimrc ~/.vimrc

### Compile command-t

    rvm system #ensure build on Ruby 1.8.7 if using RVM
    cd ~/.vim/bundle/command-t
    bundle
    rake make

### tmux support (optional)

This contains a base `tmux.conf`, but you might want to use your own.

## Updating

As long as your checkout is kept clean, you can easily update, rebase your local changes and update submodules with:

    cd ~/.vim && git pull --rebase ; git submodule update ; cd -

