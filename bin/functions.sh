#!/data/data/com.termux/files/usr/bin/zsh


# List directory contents on `cd`
# todo: Get length of dir name for hr length
chpwd() {
    # emulate -L zsh
    # Only auto-list if the directory contains fewer than 200 items
    if [ "$(ls -1 | wc -l)" -lt 200 ]; then
        echo "📁 $(print -rP '%1~') \n -----------"
        l # eza simple list
    else
        echo "📁 Directory is too large to auto-list."
    fi
}
