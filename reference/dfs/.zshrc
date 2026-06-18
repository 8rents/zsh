# ZSH User Run Commands file for Android

# The rc file is sourced only for interactive instances of zsh and the moat common file to add configuration options to. It differs from `zprofile` only in that it is called after `zlogin`. Otherwise they "profile" and "run commands" address the same instance types. `zshrc` values trump `zprofile` values becauae it is called afterward.

# Configuration file for zsh instances that are:
# - [x] Interactive (User enter commands in the terminal)
# - [ ] Login (The default shell for the terminal)

# Updated: 2026, May 22nd @  12:43pm PST


# History
# =======
# zsh.sourceforge.io/Doc/Release/Options.html#History

# History Variables
# -----------------

# History file location
HISTFILE=$ZSH/history.log

# History file size limits (whichever is first)
HISTSIZE=10000 # kilobytes
SAVEHIST=100000 # Lines

# History Options
# ---------------

# If the internal history needs to be trimmed to add the current command line, setting this option will cause the oldest history event that has a duplicate to be lost before losing a unique event from the list."
setopt hist_expire_dups_first

# Remove command lines from the history list when the first character on the line is al space, or when one of the expanded aliases contains a leading space. Only normal aliases (not global or suffix aliases) have this behaviour. Note that the command lingers in the internal history until the next command is entered before it vanishes, allowing you to briefly reuse or edit the line. If you want to make it vanish right away without entering another command, type a space and press return."
setopt hist_ignore_space

# This option both imports new commands from the history file, and also causes your typed commands to be appended to the history file (the latter is like specifying INC_APPEND_HISTORY, which should be turned off if this option is in effect). The history lines are also output with timestamps ala EXTENDED_HISTORY (which makes it easier to find the spot where we left off reading the file after it gets re-written)."
setopt share_history



# Completions (zstyle)
# ====================
# zsh.sourceforge.io/Doc/Release/Options.html#Completion

# Load the new zsh completion system
autoload -U compinit; compinit

# If a completion is performed with the cursor within a word, and a full completion is inserted, the cursor is moved to the end of the word.
# https://zsh.sourceforge.io/Doc/Release/Options.html#Completion-4
setopt always_to_end

# If unset, the cursor is set to the end of the word if completion is started. Otherwise it stays there and completion is done from both ends.
setopt complete_in_word

# Automatically use menu completion after the second consecutive request for completion, for example by pressing the tab key repeatedly. This option is overridden by MENU_COMPLETE.
setopt auto_menu

# On an ambiguous completion, instead of listing possibilities or beeping, insert the first match immediately. … This option overrides AUTO_MENU.  Unset to unblock auto_menu
# https://zsh.sourceforge.io/Doc/Release/Options.html#Completion
unsetopt menu_complete

# Make globbjng case insesitive
setopt nocaseglob

# Matcher Lists
# -------------

# Case insensitive completion (Uppercase and lowercase march each other)
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'

# Hyphens and Underscores insensitive comoletion. Each completes the other.
zstyle ':completion:*' matcher-list '' 'm:{-_}={_-}'


# Changing Directories
# ====================
# zsh.sourceforge.io/Doc/Release/Options.html#Changing-Directories

# Make cd push the old directory onto the directory stack
setopt auto_pushd

# If a command is issued that can’t be executed as a normal command and the command is the name of a directory, perform the cd command to that directory
# https://zsh.sourceforge.io/Doc/Release/Options.html#Changing-Directories
setopt auto_cd

# Exchanges the meanings of ‘+’ and ‘-’ when used with a number to specify a directory in the stack."
# `cd -3` goes back three directories in the cd stack. I do this because `cd -<n>` matches `git checkout @{-<n>}` better than `cd +<n>` does.
setopt pushd_minus


# ZLE (ZSH Line Editor)
# =====================
# https://zsh.sourceforge.io/Doc/Release/Zsh-Line-Editor.html

# run-help is like man for builtin. run-help is normally aliased to man. so remove the alias (if there was no alias, suppress the error output)
autoload run-help
# unalias run-help 2>/dev/null


# When searching for history entries in the line editor, do not display duplicates of a line previously found, even if the duplicates are not contiguous
setopt hist_find_no_dups


# Input
# =====
# https://zsh.sourceforge.io/Doc/Release/Options.html#Input_002fOutput

# Turns on interactive comments; comments are a line beginning with a hash (#)
# That is, enable comments in the terminal. Nice when copying and pasting from documentation/tutorials, and disable part of a command pulled up from history.
setopt interactivecomments

# If this option is unset, output flow control via start/stop characters (usually assigned to ^S/^Q) is disabled in the shell’s editor.
unsetopt flow_control


# Prompt
# ======
# https://zsh.sourceforge.io/Doc/Release/Options.html#Prompting

# If set, parameter expansion, command substitution and arithmetic expansion are performed in prompts. Substitutions within prompts do not affect the command status.
setopt prompt_subst


# Aliases & Libraries
# ===================
# These extend the capabilities of zsh in area specific ways. Alias and libraries that I didnt personally writebor maintain outside of this zsh config should be imported as git sub modules and then added to the corrisponding index file

# Source the aliases index file
source $Z/aliases/index.zsh

# Source libraries index file
source $Z/lib/index.zsh


# Start up commands
# =================
# Commands that will run when a new terminal is opened


# tmux
# ----
# Create a tmux instance if there is not one already
if [[ ! -v TMUX  ]]; then
    tmux new -A -s android
fi


# oh my posh
# --—-------
# Use ohmyposh as zsh prompt

# brentstick prompt
eval "$(oh-my-posh init zsh --config $HOME/.config/oh-my-posh/themes/brentstick/brentstick.omp.json)"

# default prompt
# eval "$(oh-my-posh init zsh)"


# Neofetch
# --------
# Show system info (even in new tmux instances windows and pane)
# config file: .config/neofetch/config.conf
neofetch


# Links
# =====
# - https://github.con/8rents/zsh
#   Git repository for these files
# - https://zsh.sourceforge.io/Guide/zshguide02.html
#   Further documentation and the source of the commentstt