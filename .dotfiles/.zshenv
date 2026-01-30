# ====================
# zsh environment file
# ====================
# sourced in all zsh instances and before any other zsh start up files (within etc: for all users /within user home: for that user)
# --------------------
# Common uses - setting environment variables
# ====================
# Links
# -[Understanding shell environment](https://www.pearsonitcertification.com/articles/article.aspx?p=3178909&seqNum=4

# ----------
# Env paths
# ----------

# note: HOME is defined in editor config
# termux.properties

# set the default folder for cli configs
export XDG_CONFIG_HOME="$HOME/.config"

# oh my posh themes
export OMP_THEMES="$XDG_CONFIG_HOME/oh-my-posh/themes"
# Z is the path to this repo, the `zsh` folder
export Z="$XDG_CONFIG_HOME/shells/zsh"

# ZDOTDIR is default zsh configs folder
# .config/shells/zsh/.dotfiles
export ZDOTDIR="$Z/.dotfiles"

# Path environmental variable
export PATH="$PATH:$HOME/bin"

# -----------
# env options
# -----------

# set primary cli editor
export EDITOR=nano

# Spell Checker
export SPELL=aspell

# default GUI  text editor
# export VISUAL='vscode'

# assistance with gpg signing
export GPG_TTY=$(tty)