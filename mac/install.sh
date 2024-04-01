/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew update
brew upgrade

programs=(
	1password
	google-chrome
	whatsapp
	telegram
	raycast
)

# Install brew packages
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

open -a "Google Chrome" --args --make-default-browser
