# ZSH Functions file
# ==================
# This here is the place to add new functions to zsh that are not ready to be, or do not require being added as an entire plugin or are too big to be an alias. This that special place in between.


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
        # echo "⚠️  Large directory ($item_count items) -> Compact Grid View"
        eza --grid --icons --group-directories-first --no-quotes --ignore-glob=".git|node_modules"
    else
        # Detailed list view with Git info for standard directories
        eza -1 --git --icons --group-directories-first --no-quotes --ignore-glob=".git|node_modules"
    fi
}
add-zsh-hook chpwd eza_after_cd



# New markdown file template
# ==========================
# default name: README.md
# default path: current directory
# can over ride path and name by passing argument
# If copying the template went without error,
# Then Open created file in the shells defined text editor
tpl-md(){
  FILE=${1:-README.md}
  cp -v $HOME/templates/md/README.md $FILE && $EDITOR $FILE
}

# New todo list to current directory
# ==================================
# can not override path or name
tpl-todo() {
  cp -v ~/templates/md/TODO.md . && $EDITOR TODO.md
}

# Copy Project template
# =====================
# default name: project
# default location: current directory
tpl-project() {
  cp -rv ~/templates/md/project ${1:-.}
}


# take: mkdir -pv & cd
# =====================
take() {

}

# new: touch & mkdir had a baby
# =============================
# make dir if: ends with / or has no dot
# make file if: doesnt end with / or has dot
new() {

}


# del: taking out the trash
# =========================
del() {

}

# trash: dumpster love
# ====================
# tools for working with the garbage can of the 21st century
trash() {

}
