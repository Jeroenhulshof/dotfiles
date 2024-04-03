
# Finder
defaults write com.apple.finder ShowMountedServerOnDesktop -boolean false;
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -boolean false;
defaults write com.apple.finder ShowRemovableMediaOnDesktop -boolean true;
defaults write com.apple.finder _FXSortFoldersFirst -boolean true;
defaults write com.apple.finder AppleShowAllFiles -boolean true;
defaults write com.apple.finder ShowStatusBar -boolean true;
defaults write com.apple.finder _FXShowPosixPathInTitle -boolean true;

# Show all extensions by default
defaults write NSGlobalDomain AppleShowAllExtensions -boolean true;

# Dock
defaults write com.apple.dock static-only -bool true;

# Do not write .DS_Store file
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true;

# Disable autocorrect
defaults write -g NSAutomaticSpellingCorrectionEnabled -bool false;

# Trackpad - Use tap for click
defaults -currentHost write -globalDomain com.apple.mouse.tapBehavior -int 1

# Do not reopen programs when login
defaults write com.apple.loginwindow TALLogoutSavesState -bool false

for apps in "Dock", "Finder"; do
	killall app >/dev/null 2>&1
done



