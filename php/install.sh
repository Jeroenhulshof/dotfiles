/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew update
brew upgrade

apps=(
	git
	php
	composer
	node
	redis
	mariadb
)

# Install brew packages
brew install "${apps[@]}"

# Install laravel composer helpers and export it to path
composer global require laravel/installer
composer global require laravel/valet

echo 'export PATH="$HOME/.composer/vendor/bin:$PATH"' >> ~/.zshrc
source ~/.zshrc

# Install valet
valet install

programs=(
	phpstorm
	tableplus
	postman
	sublime-text
)

# Install programs
for program in "${programs[@]}"
do
	if brew list --cask "$program" >/dev/null 2>&1
	then
		echo "$program already exists. Skipping install..."
	else 
		echo "Installing $program..."
		brew install --cask "$program"
	fi
done

# Create development directory in $HOME
if ! test -d ~/Development; then
  mkdir ~/Development
fi
