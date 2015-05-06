# My Dotfiles

This repository holds my personalized dotfiles on Mac OS X.

## Usage

Clone the repository to local machine and symlink the .bash_profile and .dotfiles under `~/` to the location of the repository.

__Make sure to copy any current settings from current .bash_profile into the repository version before symlinking.__

    ln -s ~/Development/Projects/dotfiles/.bash_profile ~/.bash_profile
    ln -s ~/Development/Projects/dotfiles/ ~/.dotfiles

__Make sure to copy any current settings from the .gitconfig in `$HOME` directory before symlinking.__

    ln -s ~/Development/Projects/dotfiles/.gitconfig ~/.gitconfig

## Setup Git

After cloning the repository, create the following file:

    $ touch ~/.gitconfig.local

This will store the Git Nameand Email.

Add the following to the new file:

    [user]
        name = YOUR NAME
        email = ANEMAIL@SOMEPLACE.COM

## iTerm

I use [iTerm 2](http://www.iterm2.com/#/section/home) on Mac OS X with the [Solarized](http://ethanschoonover.com/solarized) theme.

## Sources

* [https://github.com/altercation/solarized/tree/master/iterm2-colors-solarized](https://github.com/altercation/solarized/tree/master/iterm2-colors-solarized)
* [https://github.com/necolas/dotfiles](https://github.com/necolas/dotfiles)
