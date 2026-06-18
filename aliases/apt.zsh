# apt
# ===
# Apt package manager aliases

# install package(s)
alias ai="apt update; apt install -y"

# get info about a packages
alias ainfo="apt info"

# search for package
alias as="apt search"

# upgrade packages
alias au="apt update; apt upgrade -y"

# update repositories
alias aur="apt update"

# full system upgrade
alias afu="apt update; apt full-upgrade -y"

# uninstall package & deps
alias auni="apt purge -y"
