# ==============================================================================
# HISTORY OPTIONS
# ==============================================================================
HISTFILE=~/.zsh_history        # File where command history saves
HISTSIZE=10000                 # Commands kept in active memory
SAVEHIST=10000                 # Commands saved permanently to disk
setopt SHARE_HISTORY          # Share command history across all open terminal windows
setopt HIST_EXPIRE_DUPS_FIRST # Delete duplicate commands first when trimming history limit
setopt HIST_IGNORE_DUPS       # Do not record an entry that matches the previous command
setopt HIST_IGNORE_ALL_DUPS   # Remove older duplicate entries when a new command matches them
setopt HIST_FIND_NO_DUPS      # Skip duplicate entries when searching backwards through history
setopt HIST_IGNORE_SPACE      # Skip commands starting with a space (useful for sensitive data)

# ==============================================================================
# AUTOCOMPLETION & DIRECTORY NAVIGATION OPTIONS
# ==============================================================================
autoload -U compinit && compinit                      # Load Zsh's completion engine
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' # Enable case-insensitive tab completion
zstyle ':completion:*' menu select                    # Turn on interactive arrow-key completion menu
setopt AUTO_CD                # Change directory simply by typing its path (no 'cd' needed)
setopt AUTO_PUSHD             # Track visited directories on a stack automatically
setopt PUSHD_IGNORE_DUPS      # Keep duplicate paths off the directory stack

# ==============================================================================
# ALIASES
# ==============================================================================
alias rm="rm -i"              # Prompt for confirmation before deleting files
alias cp="cp -i"              # Prompt for confirmation before overwriting files during copy
alias mv="mv -i"              # Prompt for confirmation before overwriting files during move
alias ..="cd .."              # Move up one directory level
alias ...="cd ../.."          # Move up two directory levels
alias ....="cd ../../.."      # Move up three directory levels
alias zshconfig="nano ~/.zshrc" # Open this configuration file in terminal editor
alias reload="source ~/.zshrc"  # Reload and apply configuration changes immediately

# Replacement 'ls' directory formatting using 'eza' (if installed)
if command -v eza &> /dev/null; then
    alias ls="eza --icons"                # List files with modern icons
    alias ll="eza -la --icons --git"      # List all files with icons and git status
else
    alias ls="ls --color=auto"            # Colorized standard file listing
    alias ll="ls -la"                     # Detailed standard file listing
fi

# Git workflow shortcuts
alias g="git"                 # Shorthand for git
alias gs="git status"         # View repository status
alias ga="git add"            # Stage changes
alias gc="git commit -m"      # Commit staged changes with message
alias gp="git push"           # Push commits to remote branch
alias gl="git pull"           # Fetch and merge remote changes

# ==============================================================================
# PROMPT CUSTOMIZATION
# ==============================================================================
autoload -U colors && colors  # Load standard terminal color variables

# Get current git branch name (returns empty string if not in a git repo)
git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# Prompt structure: [user@host current_path (git_branch)]$
PROMPT='%F{cyan}%n@%m%f:%F{yellow}%~%f%F{green}$(git_branch)%f$ '

# ==============================================================================
# PLUGINS
# ==============================================================================
# Load auto-suggestions based on history (Homebrew default path)
[ -f /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh ] && source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# Load command syntax highlighting (Must stay at the very end of the file)
[ -f /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ] && source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
