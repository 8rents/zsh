# ===========================
# .zshrc (rc.zsh) for Android
# ===========================
# Brent's Android zsh rc file
# github.com/8rents/zsh
# ---------------------------
# Updated:
# 2026, January 7th @ 5:22pm
# ---------------------------


# ===============
# Credits / Links
# ===============
# Further documentation and the source of the comments: https://zsh.sourceforge.io/Guide/zshguide02.html which covers what to put in your startup files


# ====================
# Sections in this Doc
# ====================
# 0. Environmental
# 1. Autoloads
# 2. History
# 3. Options
# 4. ZLE
# 5. Zstyle
# 6. Sourced Files (aliases, libs)
# 7.

# ==========================
# 0. Environmental Variables
# ==========================
# The environment is a special region outside the shell, and zsh has to be told to put a copy there as well as keeping one of its own. The usual syntax is:
# `export VARNAME="value"` (Double quote the value)
# Variables that are exported are exported to the environment and child-processes, so that the child inherits them.

# --------------------------
# The .zshenv (env.zsh) File
# --------------------------
# zsh contains the start up file .zshenv which is always read. This file is designed to hold  environmental configuration. The env file is run for all instances of zsh where as the rc file is only run for interactive instances. These paths should be included in all instances, so they defined in the env file, not here.
# -------------------------
# Paths defined in .zshenv... as they are environmental
# -------------------------

# Home folder
# HOME=~/

# CLI configs folder
# XDG_CONFIG_HOME=$HOME/.config

# zsh configs repo
# Z=$XDG_CONFIG_HOME/shells/zsh

# ============
# 1. Autoloads
# ============

# zsh Completion
autoload -U compinit; compinit

# run-help is like man for builtin. run-help is normally aliased to man. so remove the alias (if there was no alias, suppress the error output)
# https://zsh.sourceforge.io/Doc/Release/Zsh-Line-Editor.html
# autoload run-help
# unalias run-help 2>/dev/null


# ===========
# 2. History
# ===========
# History (log) file of commands the user has run
# -----------

# Location of history file
HISTFILE=$Z/history.log

# How big can the file get in kb
HISTSIZE=5000

# Or by lines saved. One command per line
SAVEHIST=5000

# ==============
# 3. zsh options
# ==============

# If a completion is performed with the cursor within a word, and a full completion is inserted, the cursor is moved to the end of the word.
# https://zsh.sourceforge.io/Doc/Release/Options.html#Completion-4
setopt always_to_end

# If a command is issued that can’t be executed as a normal command and the command is the name of a directory, perform the cd command to that directory
# https://zsh.sourceforge.io/Doc/Release/Options.html#Changing-Directories
setopt auto_cd

# Automatically use menu completion after the second consecutive request for completion, for example by pressing the tab key repeatedly. This option is overridden by MENU_COMPLETE.
# https://zsh.sourceforge.io/Doc/Release/Options.html#Completion-4
setopt auto_menu

# Make cd push the old directory onto the directory stack
# https://zsh.sourceforge.io/Doc/Release/Options.html#Changing-Directories
setopt auto_pushd

# If unset, the cursor is set to the end of the word if completion is started. Otherwise it stays there and completion is done from both ends.
# https://zsh.sourceforge.io/Doc/Release/Options.html#Completion-4
setopt complete_in_word

# If the internal history needs to be trimmed to add the current command line, setting this option will cause the oldest history event that has a duplicate to be lost before losing a unique event from the list."
# https://zsh.sourceforge.io/Doc/Release/Options.html#History
setopt hist_expire_dups_first

# When searching for history entries in the line editor, do not display duplicates of a line previously found, even if the duplicates are not contiguous
# https://zsh.sourceforge.io/Doc/Release/Options.html#History
setopt hist_find_no_dups

# Remove command lines from the history list when the first character on the line is a space, or when one of the expanded aliases contains a leading space. Only normal aliases (not global or suffix aliases) have this behaviour. Note that the command lingers in the internal history until the next command is entered before it vanishes, allowing you to briefly reuse or edit the line. If you want to make it vanish right away without entering another command, type a space and press return."
# https://zsh.sourceforge.io/Doc/Release/Options.html#History
setopt hist_ignore_space

# Turns on interactive comments; comments begin with a
# https://zsh.sourceforge.io/Intro/intro_16.html
# That is, enable comments in the terminal. Nice when copying and pasting from documentation/tutorials, and disable part of a command pulled up from history.
setopt interactivecomments

# If this option is unset, output flow control via start/stop characters (usually assigned to ^S/^Q) is disabled in the shell’s editor.
#https://zsh.sourceforge.io/Doc/Release/Options.html#Input_002fOutput
unsetopt flow_control

# Beep on an ambiguous completion. More accurately, this forces %12²configuration.1the completion widgets to return status 1 on an ambiguous completion, which causes the shell to beep if the option BEEP is also set; this may be modified if completion is called from a user-defined widget."
# https://zsh.sourceforge.io/Doc/Release/Options.html#Completion-4
unsetopt list_beep

# On an ambiguous completion, instead of listing possibilities or beeping, insert the first match immediately. … This option overrides AUTO_MENU.
# https://zsh.sourceforge.io/Doc/Release/Options.html#Completion-4
# Unset to unblock auto_menu
unsetopt menu_complete


# Make globbjng cazs inse sitive
setopt nocaseglob


# If set, parameter expansion, command substitution and arithmetic expansion are performed in prompts. Substitutions within prompts do not affect the command status.
# https://zsh.sourceforge.io/Doc/Release/Options.html#Prompting
setopt prompt_subst

# Exchanges the meanings of ‘+’ and ‘-’ when used with a number to specify a directory in the stack."
# https://zsh.sourceforge.io/Doc/Release/Options.html#Changing-Directories
# `cd -3` goes back three directories in the cd stack. I do this because
# `cd -<n>` matches `git checkout @{-<n>}` better than `cd +<n>` does.
setopt pushd_minus

# This option both imports new commands from the history file, and also causes your typed commands to be appended to the history file (the latter is like specifying INC_APPEND_HISTORY, which should be turned off if this option is in effect). The history lines are also output with timestamps ala EXTENDED_HISTORY (which makes it easier to find the spot where we left off reading the file after it gets re-written)."
# https://zsh.sourceforge.io/Doc/Release/Options.html#History
# setopt share_history



# ================================
# Libraries, completions & plugins
# ================================
#
# -------------------------------


# ------------
# Completions
# zstyle
# ------------

autoload -Uz compinit && compinit


# Case insensitive completion
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'


# Hyphen / Underscore insensitive completions
zstyle ':completion:*' matcher-list '' 'm:{-_}={_-}'
# ----------


# Source the main aliases file
source $Z/aliases/aliases.zsh

# Location of library files
# $Z/lib

# =================
# Start up commands
# =================
# Commands that will run when a new terminal is opened
# -----------------

# -----------------
# NEW TMUX
# Create a tmux instance if there is not one already
# -----------------
if [[ ! -v TMUX  ]]; then
    tmux new -A -s android
fi
# -----------------
# Load oh my posh & brentstick theme
# -----------------
# eval "$(oh-my-posh init zsh --config $HOME/.config/oh-my-posh/themes/brentstick/brentstick.omp.json)"


eval "$(oh-my-posh init zsh)"

# -----------------
# Neofetch
# Show system info
# even in new tmux instances windows and pane
# -----------------
neofetch

# ==============#
# Credits / Links
# ==============#
# - https://olets.dev/posts/my-zshrc-zsh-configuration-annotated/