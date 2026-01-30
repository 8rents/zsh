# =======
# Aliases
# =======
# This file is included directly into the .zshrc file.
# You can either enter aliases directly into this file, or you can include other alias files into this one.
#  ------
export ALIASES="$Z/aliases"
# ============
# Temp Aliases
# ============
# non-filed aliases
# ------------

# =======
# Files
# =======
alias td="nano ~/TODO.md"
alias flac2lame='find "$HOME/android/Media/Audio/Music/Library" -name "*.flac" -print0 | xargs -0 flac2mp3-v2'
alias notes="cd ~/android/Notes && glow"

# ===
# zsh
# ===

# Reload Zsh
alias rl="source $Z/rc.zsh"

alias zenv="nano $Z/env.zsh"

# Edit zsh config
alias zconf="nano $Z/rc.zsh"

# Edit this file
alias aliases="nano $Z/aliases/aliases.zsh"

# take (make-take)
alias take=". make-take"

# Take
# 1. make dir + pat
# 2. change to di
# 3. copy readme template
# alias take=""
# ===============
# Auto ls with cd
# ===============
# when changing directory automatically show list

# ---------------

# =============
# Nano
# =======+=====

# edit nanorc
alias nconf="nano ~/.config/nano/nanorc"
alias docs="glow ~/docs"
alias ndocs="nano ~/.config/nano/*.md ~/.config/nano/docs/*.md"

# ===
# apt
# ===

# update repositories
alias aupd="apt update"

# upgrade packages
alias aupg="apt update && apt upgrade -y"

# install package(s)
alias ai="apt update && apt install -y"

# full system upgrade
alias afu="apt update && apt full-upgrade -y"

# search for package
alias as="apt search"

# uninstall package & deps
alias au="apt purge -y"

# get info about a packages
alias inf="apt info"

# ====
# tmux
# ====
alias tconf="nano ~/.config/tmux/tmux.conf"

# ===
# git
# ===

alias g="git"

# --------------------

# external alias files
source $ALIASES/eza.zsh


# =====
# rsync
# =====
# For any ex ludes first set the environment variable $EZCLUDE using the export command. Values are quoted and comma separated.

# export EXCLUDE='Desktop','Download'

# -test commands are dry runs

# ----------
# rmerge
# ---------
# Does not perform deletions to mirror the current state of folders
alias rmerge="rsync -rlhc --info=progress2,file0 exclude={$EXCLUDE}"
alias rmerge-test="rsync -rlhcn --info=progress2,file0 exclude={$EXCLUDE}"

# ---------
# rbackup
# ---------
# Performs deletions to mirror the current state of foldera
alias rbackup="rsync -a --info=progress2,file0 exclude={$EXCLUDE}"
alias rbackup-test="rsync -an --info=progress2,file0 exclude={$EXCLUDE}"