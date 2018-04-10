#!/bin/bash
defaults delete ./com.apple.dock.plist persistent-apps
defaults delete ./com.apple.dock.plist persistent-others
Killall Dock
