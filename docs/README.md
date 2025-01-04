# ![ZSH Icon](https://raw.githubusercontent.com/8rents/_/i/h1/zsh.png) Brent's Android ZSH Config

> *My Android dZSH config. This repository uses a per platform branching structure meaning each branch is for a different platform*

---

## Documentation Articles

- **Installing**
- [Understanding ZSH startup files](./zsh-startup-files/README.md)
- [Using Platform Branched Repositories](./platform-branching/README.md)
- [Staying current with Upstream remote repositories](../upstream-forks/README.md)

## Platform Branching

This repository uses a separate branch for different platforms. 

>  ***Note:** This is the `docs` branch. There are no config files on this branch, only documentation files.*

### Current Platforms

The currently supported platforms are:

- [`debian`](https://github.com/8rents/zsh/tree/debian) - For Debian based Linux distros
- [`android`](https://github.com/8rents/zsh/tree/android) - For use with Android OS
- [`msys2`](https://github.com/8rents/zsh/tree/msys2) - Linux like development platform for Windows. Download ZSH through Pacman package manager.

### Future Planned Platforms

Platforms planned to be supported:

- `debian-server` - For Debian based Linux distros without a desktop
- `mac` - For macOS computers

### Legacy Platforms

Older platforms that are no longer supported:

-   [`oh-my-brent-on-h`](https://github.com/8rents/zsh/tree/oh-my-brent-on-h) - My old "Oh my ZSH" config

### Non-Platform Branches

These are branches that are not for a specific platform:

- `docs` - **Default branch.** Documentation on ZSH and this repository. Contains license and platform agnostic info.
- `blank` - Empty starting point branch

## How to install these ZSH presets

### Using the dotfiles installer
By convention I install all of my dotfiles into a dotfiles directory. This is my main git repo. Each module in the dotfiles directory is a git submodules. The installer downloads them and symlinks them to the correct places then proceeds to download all of the software.9{

### Manual Installation

After cloning the repository, switch to the correct branch for your platform.

1. Clone the repo
   - Using the git cli
     
     ```bash
     # clone the repo with git cli
     git clone https://github.com/8rents/zsh ~/.config/shells/zsh
     ```
   - or use the GitHub cli to clone:
     
     ```bash
     # clone repo with github cli
     gh repo clone 8rents/zsh ~/.config/shells/zsh
     ```
2. Then change branches to the correct platform
   
    ```
    # switch to the correct branch (debian, android, etc)
    git switch android
    ```
3. Run the installer script

   ```bash
   # Run the installer script
   ./install.sh
   ```

---

**🤍2024 [Brenton Holiday](https://brenton.holiday)**
