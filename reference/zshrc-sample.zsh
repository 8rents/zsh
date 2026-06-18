# fully annotated zshrc sample file
# https://olets.dev/posts/my-zshrc-zsh-configuration-annotated/

# ==========
# Environment
# ==========

# The environment is a special region outside the shell, and zsh has to be told to put a copy there as well as keeping one of its own. The usual syntax is `export VARNAME='value'`
# https://zsh.sourceforge.io/Guide/zshguide02.html

# =======================
# Environmental Variables
# =======================

# set primary cli editor
export EDITOR=nano

# assistance with gpg signing
export GPG_TTY=$(tty)

# set the default folder for cli configs
export XDG_CONFIG_HOME=~/.config

# ==============
# PATH additions
# ==============
# add additional paths to include



# =========
# Autoloads
# =========

# run-help is like man for builtin. run-help is normally aliased to man. so remove the alias (if there was no alias, suppress the error output)
# https://zsh.sourceforge.io/Doc/Release/Zsh-Line-Editor.html
autoload run-help
unalias run-help 2>/dev/null

# =============
# zsh parameters
# =============

# The file to save the history in when an interactive shell exits.
# https://zsh.sourceforge.io/Doc/Release/Parameters.html#Parameters-Used-By-The-Shell
HISTFILE="$ZDOTDIR/.zsh_history"

# "The maximum number of events stored in the internal history list.
# https://zsh.sourceforge.io/Doc/Release/Parameters.html#Parameters-Used-By-The-Shell
HISTSIZE=1100000000

# The maximum number of history events to save in the history file.
# https://zsh.sourceforge.io/Doc/Release/Parameters.html#Parameters-Used-By-The-Shell
SAVEHIST=1000000000

# ==========
# zsh options
# ==========

# If a completion is performed with the cursor within a word, and a full completion is inserted, the cursor is moved to the end of the word.
# https://zsh.sourceforge.io/Doc/Release/Options.html#Completion-4
setopt always_to_end

# If a command is issued that can’t be executed as a normal command and the command is the name of a directory, perform the cd command to that directory
# https://zsh.sourceforge.io/Doc/Release/Options.html#Changing-Directories
setopt auto_cd

# Automatically use menu completion after the second consecutive request for completion, for example by pressing the tab key repeatedly. This option is overridden by MENU_COMPLETE.
# https://zsh.sourceforge.io/Doc/Release/Options.html#Completion-4
setopt auto_menu

# Make cd push the old directory onto the directory stack.
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

  # "Beep on an ambiguous completion. More accurately, this forces the
  # completion widgets to return status 1 on an ambiguous completion,
  # which causes the shell to beep if the option BEEP is also set; this
  # may be modified if completion is called from a user-defined widget."
  # https://zsh.sourceforge.io/Doc/Release/Options.html#Completion-4
  unsetopt list_beep

  # "On an ambiguous completion, instead of listing possibilities or
  # beeping, insert the first match immediately. … This option overrides AUTO_MENU."
  # https://zsh.sourceforge.io/Doc/Release/Options.html#Completion-4
  #
  # Unset to unblock auto_menu
  unsetopt menu_complete

  # "If set, parameter expansion, command substitution and arithmetic
  # expansion are performed in prompts. Substitutions within prompts do
  # not affect the command status."
  # https://zsh.sourceforge.io/Doc/Release/Options.html#Prompting
  setopt prompt_subst

  # "Exchanges the meanings of ‘+’ and ‘-’ when used with a number to
  # specify a directory in the stack."
  # https://zsh.sourceforge.io/Doc/Release/Options.html#Changing-Directories
  #
  # `cd -3` goes back three directories in the cd stack. I do this because
  # `cd -<n>` matches `git checkout @{-<n>}` better than `cd +<n>` does.
  setopt pushd_minus

  # "This option both imports new commands from the history file, and
  # also causes your typed commands to be appended to the history file
  # (the latter is like specifying INC_APPEND_HISTORY, which should be
  # turned off if this option is in effect). The history lines are also
  # output with timestamps ala EXTENDED_HISTORY (which makes it easier
  # to find the spot where we left off reading the file after it gets
  # re-written)."
  # https://zsh.sourceforge.io/Doc/Release/Options.html#History
  setopt share_history

# zsh zle
  # "The line editor has the ability to highlight characters or
  # regions of the line that have a particular significance. This is
  # controlled by the array parameter zle_highlight, if it has been set
  # by the user."
  # https://zsh.sourceforge.io/Doc/Release/Zsh-Line-Editor.html#Description-6
  # "[paste:] Following a command to paste text, the characters that
  # were inserted."
  # "[none:] No highlighting is applied to the given context. It is not
  # useful for this to appear with other types of highlighting; it is
  # used to override a default."
  # https://zsh.sourceforge.io/Doc/Release/Zsh-Line-Editor.html#Character-Highlighting
  #
  # I disable the highlighting of text pasted into the terminal.
  zle_highlight=('paste:none')

# zsh zstyle
  # This style defines the path where any cache files containing dumped
  # completion data are stored.
  # https://zsh.sourceforge.io/Doc/Release/Completion-System.html#Standard-Styles
  #
  # h/t Marlon Richert for the path
  # https://github.com/marlonrichert/zsh-autocomplete/blob/cfc3fd9a75d0577aa9d65e35849f2d8c2719b873/Functions/Init/.autocomplete__config#L10C24-L10C69
  zstyle ':completion:*' cache-path ${XDG_CACHE_HOME:-$HOME/.cache}/zsh/compcache

  # "[matcher-list] can be set to a list of match specifications that are
  # to be applied everywhere.""
  # https://zsh.sourceforge.io/Doc/Release/Completion-System.html#index-matcher_002dlist_002c-completion-style
  # https://zsh.sourceforge.io/Doc/Release/Completion-Widgets.html#Completion-Matching-Control
  #
  # h/t ohmyzsh for prefering `[:lower:]`/`[:upper:]` over `a-z`/`A-Z`
  # https://github.com/ohmyzsh/ohmyzsh/commit/0ca8907f0e6185545c5e38f77ae2f09ca2a44e77
  #
  # h/t Marlon Richert for most of the specifications and for the idea
  # of giving match specifications meaningful names
  # https://github.com/marlonrichert/zsh-autocomplete/blob/cfc3fd9a75d0577aa9d65e35849f2d8c2719b873/Functions/Init/.autocomplete__config#L23-L34
  #
  # I add case insensitivity and dash/underscore insensitivity
  typeset -A match_specifications=(
    [any_before_any]='r:|?=**'
    [any_before_dot]='r:|[.]=**'
    [any_before_word]='l:|=*'
    [case_and_dash_insensitive]='m:{[:lower:][:upper:]-_}={[:upper:][:lower:]_-}'
    [nonseparators_after_any_before_separator]='r:?||[-_ \]=*'
    [separator_after_any]='l:?|=[-_ \]'
  )
  zstyle ':completion:*' matcher-list \
      "$match_specifications[case_and_dash_insensitive] $match_specifications[any_before_dot] $match_specifications[any_before_word]" \
      "+$match_specifications[nonseparators_after_any_before_separator] $match_specifications[separator_after_any]" \
      "$match_specifications[case_and_dash_insensitive] $match_specifications[any_before_any]"
  unset match_specifications

  # "If [menu] is ‘true’ in the context of any of the tags defined for the
  # current completion menu completion will be used."
  # https://zsh.sourceforge.io/Doc/Release/Completion-System.html#index-menu_002c-completion-style
  #
  # That is, show completion suggestions in a menu
  zstyle ':completion:*' menu select

  # "If [use-cache] is set, the completion caching layer is activated for
  # any completions which use it"
  # https://zsh.sourceforge.io/Doc/Release/Completion-System.html#index-use_002dcache_002c-completion-style
  # "so that commands like apt and dpkg complete are useable"
  # https://github.com/ohmyzsh/ohmyzsh/blob/01a955657408c8396fc947075a912ee868d5e2a7/lib/completion.zsh#L43C15-L43C70
  zstyle ':completion::complete:*' use-cache yes

# Aliases go here

# Widgets go here

# Load plugin manager here
# see https://olets.dev/uses/#terminal

# Load and configure plugins here
# see https://olets.dev/uses/#terminal

# Run compinit here
# (If you use a plugin manager, check its documentation. Some have
# their own own idiomatic commands, or handle it for you.)