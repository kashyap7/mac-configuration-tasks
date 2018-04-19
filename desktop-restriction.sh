#!/bin/bash -x

# apply the dock settings
defaults delete ~/Library/Preferences/com.apple.dock.plist persistent-apps
defaults delete ~/Library/Preferences/com.apple.dock.plist persistent-others
Killall Dock

# apply force a simple finder which hides the spotlight for us
defaults write ~/Library/Preferences/com.apple.finder.plist InterfaceLevel simple
# We force the spotlight not render any import system commands
# How do we apply these when the user you creater is not sudoer, because this is a System command

# change the finder settings, kill the toolbar and the sidebar
defaults write ~/Library/Preferences/com.apple.finder.plist ShowToolbar -bool false
defaults write ~/Library/Preferences/com.apple.finder.plist ShowStatusbar -bool false

Killall Finder
# Tweaking the menu bar, the system related menu options
# clearing the menu bar
defaults read ~/Library/Preferences/com.apple.systemuiserver.plist menuExtras
defaults -currentHost write ~/Library/Preferences/ByHost/com.apple.systemuiserver dontAutoLoad \
-array "/System/Library/CoreServices/Menu Extras/AirPort.menu" \
"/System/Library/CoreServices/Menu Extras/Battery.menu" \
"/System/Library/CoreServices/Menu Extras/User.menu" \
"/System/Library/CoreServices/Menu Extras/Volume.menu" \
"/System/Library/CoreServices/Menu Extras/Clock.menu" \
"/System/Library/CoreServices/Menu Extras/Bluetooth.menu"

