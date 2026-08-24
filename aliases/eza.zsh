# Eza Aliases
# ===========
# The modern ls replacememt
# Author: github.com/8rents

# Simple one line per item list
# -----------------------------
# options: 1 line per entry, show indicator for file type, show file icons, list folders above files, dont quote files with spaces, add color depth
# Note: each of these are built off of the previous one
alias l="eza \
--oneline \
--classify \
--icons \
--group-directories-first \
--no-quotes \
--color-scale all \
--color-scale-mode=gradient \
"

# simple list + hidden folders
alias la="l -A"

# high detail list (inherits la)
alias lll="la \
--long \
--header \
--git \
--smart-group \
--time-style=long-iso \
"

# medium detail list w/ dotfiles
alias ll="lll \
--no-user \
--time-style=relative \
"


# Trees lists @ max depths
# ------------------------
# l,ll,lll in tree form @ max depth

# simple tree
alias lt="l \
--tree \
"

# detailed tree (inherit from line 21)
alias lllt="lll \
--tree \
"

# medium detail tree
alias llt="ll \
--tree \
"


# Trees @ varying depths
# ----------------------
# these inherit from the trees @ max depths (line 37-56)

# simple
alias llt2="lt -L 2"
alias llt3="lt -L 3"
alias llt4="lt -L 4"

# medium
alias llt2="llt -L 2"
alias llt3="llt -L 3"
alias llt4="llt -L 4"

# Detail
alias lllt2="lllt -L 2"
alias lllt3="lllt -L 3"
alias lllt4="lllt -L 4"


# Notes
# -----
# - Interesting eza options --long --recurse --grid --follow-symlinks