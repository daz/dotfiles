# Disable press-and-hold for keys in favor of key repeat.
defaults write -g ApplePressAndHoldEnabled -bool false

# Always open everything in Finder's list view.
defaults write com.apple.Finder FXPreferredViewStyle clmv

# Show the ~/Library folder.
chflags nohidden ~/Library

# Restart automatically if the computer freezes
/usr/bin/sudo /usr/bin/pmset -b panicrestart 15

# Set a really fast key repeat.
defaults write NSGlobalDomain KeyRepeat -int 0

# Enable full keyboard access for all controls
# (e.g. enable Tab in modal dialogs)
defaults write NSGlobalDomain AppleKeyboardUIMode -int 3

# Enable access for assistive devices
echo -n 'a' | sudo tee /private/var/db/.AccessibilityAPIEnabled > /dev/null 2>&1
sudo chmod 444 /private/var/db/.AccessibilityAPIEnabled

# Mouse keys
defaults write com.apple.universalaccess mouseDriver -bool true
defaults write com.apple.universalaccess mouseDriverInitialDelay -int 0
defaults write com.apple.universalaccess mouseDriverMaxSpeed -int 128
defaults write com.apple.universalaccess useMouseKeysShortcutKeys -bool false

# Sticky keys
defaults write com.apple.universalaccess stickyKey -bool true
defaults write com.apple.universalaccess stickyKeyBeepOnModifier -bool false
