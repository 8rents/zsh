
# auto eza after cd
# =================
autoload -U add-zsh-hook
eza_after_cd() {
    # Check if eza is installed first
    if ! command -v eza &> /dev/null; then
        clear
        print -P "\n%F{blue}📂 %~%f"
        ls -la
        return 0
    fi

    # Count items excluding .git and node_modules
    local max_items=50
    local item_count
    item_count=$(ls -1A 2>/dev/null | grep -vE '^(\.git|node_modules)$' | wc -l)

    # Clear the terminal screen
    clear

    # Print the current directory path (Zsh %~ format shows ~ for home)
    print -P "\n%F{cyan}📁 Current Directory: %B%~%b%f"

    if [ "$item_count" -gt "$max_items" ]; then
        # Compact grid view for large directories
        echo "⚠️  Large directory ($item_count items) -> Compact Grid View"
        eza --grid --all --icons --group-directories-first --ignore-glob=".git|node_modules"
    else
        # Detailed list view with Git info for standard directories
        eza --long --all --git --icons --header --group-directories-first --ignore-glob=".git|node_modules"
    fi
}
add-zsh-hook chpwd eza_after_cd

# Copy Templates
# --------------

# New markdown files
template-readme() {
  cp -v ~/templates/md/README.md .
}

template-todo() {
  cp -v ~/templates/md/TODO.md .
}
# Project template
template-project() {
  cp -rv ~/templates/md/project .
}

# Take - mkdir & cd
take() {

}