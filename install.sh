# Set DOTFILES dir to source directory

export DOTFILES
DOTFILES="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Update dotfiles
[ -d "$DOTFILES_DIR/.git" ] && git --work-tree="$DOTFILES_DIR" --git-dir="$DOTFILES_DIR/.git" pull origin master

# Run install scripts
. "$DOTFILES/brew/brew.sh"
. "$DOTFILES/brew/brew-cask.sh"
. "$DOTFILES/composer/composer.sh"
. "$DOTFILES/osx/osx.sh"


