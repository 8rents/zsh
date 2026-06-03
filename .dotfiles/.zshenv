# Android user zsh environment file

# The environment ia what zsh instances run inside. This is the user specific environment file. This contrasts the system specific zsh environment file is located inside of etc/. System files run right before the user counterparts. The values cascade, meaning if the same value or option is defined in both user and system  files, the value is reassigned to the uswr value (think states vs federal laws)-

# This file handles configuration for zsh instances that are:

# - [x] Interactive (User enter commands in the terminal)
# - [x] Login (The default shell for the terminal)

# sourced first before any other user zsh start up files

# Directory Paths
# ===============
# Important directiries to zsh

# note: the HOME environment variable is defined in editor config file
# .config/termux/termux.properties


# set the default folder for cli configs
export CONFIG="$HOME/.config"
export SETTINGS="$CONFIG"
export XDG_CONFIG_HOME="$CONFIG"

# Path to Android storage
export ANDROID="$HOME/storage/shared"

# Z is the path to this repo, the `zsh` folder: .config/shells/zsh
export Z="$CONFIG/shells/zsh"

# ZDOTDIR is default zsh configs folder
# .config/shells/zsh/.dotfiles
export ZDOTDIR="$Z/.dotfiles"


# Defaults
# ========
# set commonly used environmental variables

# CLI editor
export EDITOR="nano"

# GUI Editor
# export VISUAL="vscode"

# Spell Checker
export SPELL="aspell"

# Pager
export PAGER="most"

# assistance with gpg signing
export GPG_TTY=$(tty)