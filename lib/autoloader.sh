
# Plugins List
# ------------
# Comma Separared, Author/Plugin
# Format mirrored in lib folder
# lib/8rents/tmux/tmux.zsh
plugins=(
  "zsh-users/zsh-syntax-highlighting"
  "zsh-users/zsh-autosuggestions"
  "zsh-users/zsh-completions"
  "zsh-users/zsh-history-substring-search"
)

# Library / plugins folder
lib="$Z/lib"

# Source all files in aliases folder
for f in $plugins; do
  # echo "https://github.com/$f"
  # If file exists, source it
  # [[ -f "$file" ]] && source $file
done
