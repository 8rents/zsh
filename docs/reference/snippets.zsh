# Load all modular config files into zshrc from configs folder
for file in $Z/alaiases/*.zsh; do
    source "$file"
done
