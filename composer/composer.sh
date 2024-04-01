# Install laravel composer helpers and export it to path
composer global require laravel/installer
composer global require laravel/valet

echo 'export PATH="$HOME/.composer/vendor/bin:$PATH"' >> ~/.zshrc
source ~/.zshrc

# Install valet
valet install