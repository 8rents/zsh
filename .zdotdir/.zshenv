# 1 zshenv (env.zsh)
# =================
# Android user zsh environment. The environment ia what zsh instances run inside. This is the user specific environment file. This contrasts the system specific zsh environment file is located inside of etc/. System files run right before the user counterparts. The values cascade, meaning if the same value or option is defined in both user and system  files, the value is reassigned to the user value (think states vs federal laws)

# This file handles configuration for zsh instances that are:

# - [x] Interactive (User enter commands in the terminal)
# - [x] Login (The default shell for the terminal)

# sourced first before any other user zsh start up files

# Path environmental variable
# ----—----------------------
# files or shell scripts that are in directories included in $PATH can be called from any directory as if user is currently in that directory. Scripts do not need to be preceeded with ./ when being called.
# note: the HOME environment variable is defined in editor config file
# dotfiles/termux/termux.properties
export PATH="$PATH:$HOME/bin"


# Dotfiles (default: ~/.config)
# =============================
# User level configs. analogous to /etc for system configs
# Set location of config files (aka dotfiles)
# commenting this, leaving it blank or settings it to a directory that doesnt exist all result in DOTFILES, XDG_CONFIG_HOME being set to default @  ~/.config
# ----------------------------
# --------- set this ---------
export CONFIG=$HOME/dotfiles
# ----------------------------

# XDG Folders (X Desktop Group)
# =============================
# XDG is a set of standards and specifications used (but not strictly enforced) across Linux distros. 
# It's divided into 2 main groups: 
# - XDG User directories: for personal configs/files.
# - XDG Base directories: for apps and system data


# XDG User Directories
# -----
# User configuration files that are versioned by git
# analogous to /etc for system configs
# Default: $HOME/.config
# check if: 1. $CONFIG (line 27) is set 2. not empty 3. it is a directory that exists. 
# If any of the 3 are not true the value of XDG_CONFIG_HOME remains ~/.config
if [[ -n $CONFIG && -d $CONFIG ]]; then
  export XDG_CONFIG_HOME="$CONFIG"  
fi

# DOTFILES (or DF) are how I personally prefer to refer to my CLI configs folder. The value is set to the value of XDG_HOME_CONFIG which is the value of CONFIG (o  line 27) or .config if line 27 was not set. Mine point
export DOTFILES="$XDG_CONFIG_HOME"
export DF="$DOTFILES"


# XDG Base Directories
# --------------------
# Apps and system cache files that are never directly touched by the user
# The state data ia arguably the only directory that could be useful to backup for genwral purposes
# Edit this line if you would like to store the xdg base system files in a different location.
export SYSTEM_DIR="$HOME/.system"


# ----- start system directory custom locations ------
# if System_dir is set & it is an actual directory

if [[ -n $SYSTEM_DIR && -d $SYSTEM_DIR ]]; then
  
# Data files
# Default: $HOME/. local/share
# User-specific data files (e.g., local logs, plugins, game saves)
export XDG_DATA_HOME="$SYSTEM_DIR/data"

# App data 
export XDG_STATE_HOME="$SYSTEM_DIR/state"

# User state files
# analogous to /var/lib for system state
# Default: $HOME/.local/state.
# Persistent state data (e.g., history, logs, current session state).
export XDG_STATE_HOME="$SYSTEM_DIR/state"

# Cached data
# analogous to /var/cache for system
# Default: $HOME/.cache.
# Non-essential cached data that can be safely deleted.
export XDG_CACHE_HOME="$SYSTEM_DIR/cache"

# User-specific runtime data 
# analogous to /var/run for runtime data
# Default: /run/user/$UID
# Temporary runtime files, sockets, and session-specific locks.
export XDG_RUNTIME_DIR="$SYSTEM_DIR/runtime"

fi
# end system dir if

# XDG System (all users) config directories
# ------------------------------------------
# System-wide configuration directories (colon-separated fallback list)
# Unless adminiatering multiple uswrs theres no reason to change these. Both commented values are the current defaults that are being used
# Default system configs
# XDG_CONFIG_DIRS="/etc/xdg"

# System-wide data directories (colon-separated fallback list).
# XDG_DATA_DIRS="/usr/local/share:/usr/share"


# ----- end system directory custom locations ------


# ZSH Shell Environment Configs
# =============================
# Shell adjustments thag apply to all instances of the zsh shell. Scripts, terminals, configs etc...
# where as zshrc is only for intwractive terminal instances

# Z is the path to this repo
export Z="$XDG_CONFIG_HOME/shells/zsh"

# zsh dot dir
# -----------
# This is where zsh will actually read & create configuration & start up files. 
# This directory is hidden because you should never need to directly access these files
# instead use the renamed and non-hidden aliases in the zsh ($Z) folder.
export ZDOTDIR="$Z/.zdotdir"


# Android partition Paths
# =======================
export ANDROID="$HOME/android"; android="$ANDROID"
export MUSIC="$ANDROID/Media/Music/Library"; tunes="$MUSIC"


# Default Programs
# ================
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
# export PAGER="bat"
# less, most, cat, bat

# Pager on manpages
# export MANPAGER="sh -c 'col -bx | bat -l man -p'"

