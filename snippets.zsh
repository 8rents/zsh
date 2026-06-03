# Load all modular config files into zshrc from configs folder
for file in ~/.config/zsh/configs/*.zsh; do
    source "$file"
done
