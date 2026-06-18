# eza (ls) aliases
# ================
# Modern replacement for ls

# simple list
alias l="eza --git -1hF"

# list with hidden
alias la="eza --git -1AhF"

# list with sizes
alias ll="eza -lhF --git --no-user --no-permissions --no-time"

# list with sizes and hidden items
alias lla="eza -lAhF --git --no-user --no-permissions --no-time"

# long list with user, size, permission
alias lll="eza --git -lhF"

# long list with user, size, permission and hidden items
alias llla="eza --git -lAhF"
