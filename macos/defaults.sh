# Dock on the left side of the screen
defaults write com.apple.dock "orientation" -string "left"

# Autohide the dock
defaults write com.apple.dock "autohide" -bool "true"

# Autohide after 0.5 seconds
defaults write com.apple.dock "autohide-delay" -float "0.5"

# Don't show recent apps
defaults write com.apple.dock "show-recents" -bool "false"

# Minimize with genie animation
defaults write com.apple.dock "mineffect" -string "genie"

# Keep order of spaces, don't rearrage by use
defaults write com.apple.dock "mru-spaces" -bool "false"

# Send screenshots to Downloads folder
defaults write com.apple.screencapture "location" -string "~/Downloads"

# Show all extensions
defaults write NSGlobalDomain "AppleShowAllExtensions" -bool "true"

# Show hidden files
defaults write com.apple.Finder "AppleShowAllFiles" -bool "true"

# Default TextEdit to Plan Text
defaults write com.apple.TextEdit "RichText" -bool "false"

# Turn off all badges
# defaults read com.apple.ncprefs "apps"

# Restart the Dock to apply settings
killall Dock
killall Finder
killall TextEdit
killall SystemUIServer