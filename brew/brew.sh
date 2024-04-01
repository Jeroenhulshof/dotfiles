/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew update
brew upgrade

apps=(
	zsh
	git
	php
	composer
	node
	redis
	mariadb
	go
)

# Install brew packages
brew install "${apps[@]}"
