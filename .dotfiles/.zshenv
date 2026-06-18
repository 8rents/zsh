# 1 zshenv (env.zsh)
# =================
# Android user zsh environment. The environment ia what zsh instances run inside. This is the user specific environment file. This contrasts the system specific zsh environment file is located inside of etc/. System files run right before the user counterparts. The values cascade, meaning if the same value or option is defined in both user and system  files, the value is reassigned to the user value (think states vs federal laws)

# This file handles configuration for zsh instances that are:

# - [x] Interactive (User enter commands in the terminal)
# - [x] Login (The default shell for the terminal)

# sourced first before any other user zsh start up files

# Directory Paths
# ===============
# Important directiries to zsh

# note: the HOME environment variable is defined in editor config file
# dotfiles/termux/termux.properties

# Dotfiles (default: ~/.config)
# ========
# User level configs. analogous to /etc for system configs
export DOTFILES="$HOME/dotfiles"; df="$DOTFILES"

# XDG User Directories
# ====================

# XDG User Essentials
# -------------------
# These folders contents should be versioned by git


# User Configurations
# analogous to /etc for system configs
# Default: $HOME/.config
export XDG_CONFIG_HOME="$DOTFILES"
export SYSTEM_DIR="$DOTFILES/.system"

# User Data files
# analogous to /usr/share for system data
# Default: $HOME/.local/share.
export XDG_DATA_HOME="$SYSTEM_DIR/data"

# User state files
# analogous to /var/lib for system state
# Default: $HOME/.local/state.
export XDG_STATE_HOME="$SYSTEM_DIR/state"

# XDG Non-Essentials
# ------------------
# These folders contents should be ignored by git

# Cached data
# analogous to /var/cache for system
# Default: $HOME/.cache.
export XDG_CACHE_HOME="$SYSTEM_DIR/cache"

# User-specific data files such as sockets, named pipes, etc.
export XDG_RUNTIME_DIR="$SYSTEM_DIR/runtime"


# Android partition
# =================
export ANDROID="$HOME/.storage/shared"

# zsh
# ===

# Z is the path to this repo
export Z="$DOTFILES/shells/zsh"

# zsh configs
# -----------
# This is where zsh will create configuration & start up files. This directory is hidden because you should never need to directly access these files, instead using the aliases in the zsh folder.
export ZDOTDIR="$Z/.dotfiles"

# Termux boot 
# -----------
# Delete Android default directories
export TERMUX_BOOT_DELETE_DIRS=("Alarms" "Documents" "Movies" "Music" "Pictures")


# Defaults
# ========
# set commonly used environmental variables

# CLI editor
export EDITOR="nano"
# nano, neovim, emacs

# GUI Editor
# export VISUAL="vscode" 
# vscode, subl, mate

# Spell Checker
export SPELL="aspell"
# aspell, hunspell

# Pager
export PAGER="most"
# less, most, cat

