# ![ZSH Icon](https://raw.githubusercontent.com/8rents/_/i/h1/zsh.png) Git Platform Branching

> *Understanding how to use repositories that are branched in a platform specific manner.*

---

## Documentation Articles

- [Installing](../README.md)
- [Understanding ZSH startup files](../zsh-startup-files/README.md)
- **Using Platform Branched Repositories**
- [Staying current with Upstream remote repositories](../upstream-forks/README.md)

---

## Platforms currently supported

This repository uses a separate branch for different platforms. For example:

- [`debian`](https://github.com/8rents/zsh/tree/debian) - For Debian based Linux distros
- [`android`](https://github.com/8rents/zsh/tree/android) - For use with Android OS
- [`msys2`](https://github.com/8rents/zsh/tree/msys2) - Linux like development platform for Windows. Download ZSH through Pacman package manager.

You will need to clone the repo and then switch to the correct branch. 

## How to create a fork to use as an upstream repository

The very first thing you want to do is fork the repo into your own account. You will be creating your own history instead of contributing to this project. You will simply use mine as a starting point.

### Creating a fork

You will have to create the fork on GitHub. Creating a fork, takes my repository and copies it over to your account.

After forking you’ll want to make sure that my repo is still set as `upstream` or `source` in the remote repositories list. This way when I publish updates you can see them and incorporate them if you like them or alter mine to your own liking if they help kindle inspiration.

### Cloning the repo to a central location

After cloning the repository make sure to switch to the correct branch for your platform.

```bash
# Make a folder to hold the downloaded configs
mkdir -p ~/.config/shells

# clone the repo to a specific location on your computer
git clone https://github.com/8rents/zsh ~/.config/shells/zsh

# Go into the cloned repo to begin working with it
cd ~/.config/shells/zsh
```

### Switching to the correct branch for your platform

```bash
# Switch to the correct branch (debian, android, etc)
git switch <branch name>

# Run the installer file if one is present
./install.sh
```

## Up Next

- [How to stay current with an upstream forked repository](../upstream-forks/README.md)

---

🤍 2024 **[Brenton Holiday](https://brenton.holiday)** 
