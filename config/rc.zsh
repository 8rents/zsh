# 8rents Android zshrc
# File: ~/dotfiles/shells/zsh/config/rc.zsh
# Read from: ~/dotfiles/shells/zsh/config/zdotdir/.zshrc

# The linked .zshenv reads all zsh files from config/zdotdir

# The dotfiles repository
export DOTDIR="$HOME/dotfiles"

# zsh repository
export ZSHDIR="$DOTDIR/shells/zsh"

# oh my zsh installatioh
export ZSH="$ZSHDIR/lib/oh-my-zsh"

# Oh my zsh custom folde
# default is $ZSH/custom
ZSH_CUSTOM="$ZSHDIR/omz-custom"

# Executable PATH
export PATH=$HOME/bin:$PATH

# Path to History log
export HISTFILE=$ZSHDIR/logs/history.log
export HISTSIZE=50000
export SAVEHIST=$HISTSIZE

# Set path and name of compdumfile
autoload -U compinit
compinit -d $ZSHDIR/logs/completion.dump

# Write the history file in the ':start:elapsed;command' format.
setopt EXTENDED_HISTORY

# Expire a duplicate event first when trimming history.
setopt HIST_EXPIRE_DUPS_FIRST

# Do not display a previously found event.
setopt HIST_FIND_NO_DUPS

# Delete an old recorded event if a new event is a duplicate.
setopt HIST_IGNORE_ALL_DUPS

# Do not record an event that was just recorded again.
setopt HIST_IGNORE_DUPS

# Do not record an event starting with a space.
setopt HIST_IGNORE_SPACE

# Do not write a duplicate event to the history file.
setopt HIST_SAVE_NO_DUPS

# Share history between all sessions.
setopt SHARE_HISTORY



# Set name of the theme to load --- if set to "random", it will
# load a random theme each time Oh My Zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
zstyle ':omz:update' mode auto

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
#  "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
HIST_STAMPS="yyyy-mm-dd"

# Would you like to use another custom folder than $ZSH/custom?

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
aliases
alias-finder
autojump
colored-man-pages
command-not-found
common-aliases
eza
fasd
fnm
fzf
gh
git
git-auto-fetch
gnu-utils
gpg-agent

zsh-autosuggestions
zsh-syntax-highlighting
)

# Load oh-my-zsh lib
source $ZSH/oh-my-zsh.sh

# User configuration
export MANPATH="/usr/bin/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
# export EDITOR='vim'
# else
#   export EDITOR='nvim'
# f
export EDITOR='nano'

# Compilation flags
export ARCHFLAGS="-arch $(uname -m)"

# Set personal aliases, overriding those provided by Oh My Zsh libs,
# plugins, and themes. Aliases can be placed here, though Oh My Zsh
# users are encouraged to define aliases within a top-level file in
# the $ZSH_CUSTOM folder, with .zsh extension. Examples:
# - $ZSH_CUSTOM/aliases.zsh
# - $ZSH_CUSTOM/macos.zsh
# For a full list of active aliases, run `alias`.

# ------------
# ALIASES
# ------------

# Example aliases
alias zconf="nano $ZSHDIR/config/rc.zsh"
alias reload="source $ZSHDIR/config/rc.zsh"
alias rl="source $ZSHDIR/config/rc.zsh"

# ls - switched to eza plugin
# alias ls="eza"
alias l="eza --icons -1hF"
# alias ll="eza --icons --no-permissions -lhF"
# alias la="eza --icons -1ahF"
# alias lla="eza --icons -no-permissions -lahF"
# alias lt="eza --tree --icons -1hF"

# auto ls after every cd
function cd() {
    emulate -LR zsh
    builtin cd $@ &&
    eza -1hF --icons
}

# Tmux - Start with config
alias tmux="tmux -f $DOTDIR/tmux/tmux.conf"

# nano

# apt
alias ai="apt update && apt install -y"
alias as="apt update && apt search"
alias ainfo="apt update && apt info"
alias au="apt purge"

# pkg
alias pi="pkg update && pkg install -y"
alias pu="pkg uninstall"
alias ps="pkg update && pkg search"
alias pinfo="pkg update && pkg info"

# git
alias g="git"

# print datetime
alias dt="date --rfc-3339=seconds"

# ----------------
# INITIALIZE SHELL
# ----------------

# init oh my posh
eval "$(oh-my-posh init zsh)"

# ---------------
# start up scripts
# ---------------
echo ""
neofetch

