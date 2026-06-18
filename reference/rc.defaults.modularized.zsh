# ==============================================================================
#                      STANDARD ZSH CONFIGURATION TEMPLATE
# ==============================================================================
# This configuration organizes core Zsh options by category. Only default
# behaviors are actively enabled. Customizations are commented out.
# ==============================================================================

# ------------------------------------------------------------------------------
# 1. PATHS & ENVIRONMENT VARIABLES
# ------------------------------------------------------------------------------
# Defines where the shell looks for executable binaries.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Default text editor (fallback to vi if nano/vim isn't present)
export EDITOR=${EDITOR:-nano}


# ------------------------------------------------------------------------------
# 2. CHANGING DIRECTORIES (cd) OPTIONS
# ------------------------------------------------------------------------------
# Controls how Zsh handles directory navigation.

# DEFAULT: You must explicitly type 'cd' to change directories.
# If enabled, typing a directory name alone will cd into it.
# setopt AUTO_CD

# DEFAULT: cd only looks in the current working directory.
# cdpath allows you to define base directories to quickly cd into.
# cdpath=(~/Projects ~/Documents)

# DEFAULT: The cd command does not push directories onto the directory stack.
# If enabled, every cd adds the old directory to a stack you can jump back to.
# setopt AUTO_PUSHD

# DEFAULT: pushd will throw an error if you try to push a duplicate directory.
# If enabled, duplicate directories are ignored in the stack.
# setopt PUSHD_IGNORE_DUPS


# ------------------------------------------------------------------------------
# 3. COMPLETION OPTIONS
# ------------------------------------------------------------------------------
# Configures the tab-completion behavior of the shell.

# Initialize the advanced Zsh completion system (compsys)
autoload -Uz compinit
compinit

# DEFAULT: Move through completion menu manually.
# If enabled, the first tab immediately inserts the first match.
# setopt MENU_COMPLETE

# DEFAULT: Shows completion menu only when choices are ambiguous.
setopt AUTO_MENU

# DEFAULT: Paths are completed exactly as written.
# If enabled, expands paths intelligently (e.g., /u/l/b to /usr/local/bin).
setopt AUTO_PATH_CHASE


# ------------------------------------------------------------------------------
# 4. HISTORY OPTIONS
# ------------------------------------------------------------------------------
# Configures how commands are saved and recalled.

# File where history lines will be saved
HISTFILE=~/.zsh_history

# Maximum number of events stored in the internal history list
HISTSIZE=2000

# Maximum number of history events written to the history file
SAVEHIST=2000

# DEFAULT: Old history is overwritten line by line if size is exceeded.
# If enabled, appends to the history file rather than replacing it.
setopt APPEND_HISTORY

# DEFAULT: History lines are written to the file only when the shell exits.
# If enabled, commands are added to the file incrementally as they are typed.
# setopt INC_APPEND_HISTORY

# DEFAULT: Duplicate commands are stored in the history list.
# If enabled, consecutive duplicate lines are ignored.
# setopt HIST_IGNORE_DUPS

# DEFAULT: Functions and aliases are stored normally in history.
# If enabled, removes extra blanks from each history line.
# setopt HIST_REDUCE_BLANKS


# ------------------------------------------------------------------------------
# 5. INPUT/OUTPUT & CORRECTION OPTIONS
# ------------------------------------------------------------------------------
# Controls spell checking, file overwriting, and terminal safety.

# DEFAULT: Zsh will not try to correct spelling mistakes in command names.
# If enabled, prompts you with "correct to..." for typos.
# setopt CORRECT

# DEFAULT: The '>' operator will overwrite existing files without warning.
# If enabled, prevents you from accidentally clobbering/overwriting a file.
# setopt NO_CLOBBER

# DEFAULT: Allow background jobs to send output directly to the terminal.
# If enabled, stops background jobs if they try to write to the screen.
# setopt TOSTOP


# ------------------------------------------------------------------------------
# 6. PROMPT & VISUALS
# ------------------------------------------------------------------------------
# Sets the look and feel of your command line prompt.

# DEFAULT: Enable parameter expansion, command substitution, and arithmetic 
# expansion inside the prompt strings.
setopt PROMPT_SUBST

# Standard minimalist prompt displaying: [username@hostname directory]%
PROMPT='%n@%m %1~ %# '


# ------------------------------------------------------------------------------
# 7. ALIASES
# ------------------------------------------------------------------------------
# Shortcuts for frequently used commands. No defaults are enforced by Zsh,
# but common basic examples are listed below.

# alias ll='ls -lh'
# alias la='ls -A'