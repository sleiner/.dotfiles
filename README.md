# .dotfiles

## Installation

### Cloning the repository

Clone it via [git](https://git-scm.com) to your home directory, e.g.:

```zsh
git clone git@github.com:sleiner/.dotfiles.git ~/.dotfiles
```

### Installing the files

It is recommended, to do this via symlinks, you can do this either manually or using [GNU Stow](https://www.gnu.org/software/stow/).

#### Using [GNU Stow](https://www.gnu.org/software/stow/)

Example:

```zsh
cd ~/.dotfiles
stow tmux # Installs the tmux files
```

For more details on this method, see [this blog article](http://brandon.invergo.net/news/2012-05-26-using-gnu-stow-to-manage-your-dotfiles.html).

#### Symlinking manually

Example:

```zsh
ln -s ~/.dotfiles/tmux/.tmux.conf ~/.tmux.conf
```
