#!/usr/bin/env zsh
# AltTab macOS preferences dotfile

if [[ -d "/Applications/AltTab.app" ]]; then

  # -------------------------------
  # Layout / visual
  # -------------------------------
  defaults write com.lwouis.alt-tab-macos alignThumbnails -string "0"
  defaults write com.lwouis.alt-tab-macos hideColoredCircles -string "false"
  defaults write com.lwouis.alt-tab-macos hideThumbnails -string "false"
  defaults write com.lwouis.alt-tab-macos maxWidthOnScreen -string "80"
  defaults write com.lwouis.alt-tab-macos theme -string "0"
  defaults write com.lwouis.alt-tab-macos windowMaxWidthInRow -string "30"

  # -------------------------------
  # Interaction / behavior
  # -------------------------------
  defaults write com.lwouis.alt-tab-macos holdShortcut -string "⌘"
  defaults write com.lwouis.alt-tab-macos mouseHoverEnabled -string "true"
  defaults write com.lwouis.alt-tab-macos previewFocusedWindow -string "false"

  # -------------------------------
  # Scope
  # -------------------------------
  defaults write com.lwouis.alt-tab-macos screensToShow -string "1"
  defaults write com.lwouis.alt-tab-macos showHiddenWindows -string "1"
  defaults write com.lwouis.alt-tab-macos showMinimizedWindows -string "1"
  defaults write com.lwouis.alt-tab-macos spacesToShow -string "1"

  # -------------------------------
  # Optional policies
  # -------------------------------
  defaults write com.lwouis.alt-tab-macos crashPolicy -string "1"
  defaults write com.lwouis.alt-tab-macos updatePolicy -string "1"

  # -------------------------------
  # Restart AltTab to apply changes
  # -------------------------------
  pkill -f AltTab 2>/dev/null
  open -a "/Applications/AltTab.app"

fi
