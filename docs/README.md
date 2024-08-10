# ![ZSH Icon](https://raw.githubusercontent.com/8rents/_/i/h1/zsh.png) ZSH Docs

> *A collection of articles and guides to better help you use and understand ZSH*

---

- **ZSH Docs Home**  
- [Understanding ZSH startup files](zsh-startup-files.md)
- [Using Platform Branched Repositories](platform-branching.md)
- [Staying current with Upstream remote repositories](upstream-forks.md)

---

## Platform Branching

> ***Note:** This is the `docs` branch. There are no config files on this branch, only documentation files.*

This repository uses a separate branch for different platforms. For example:

### Current Platforms

- [`debian`](https://github.com/8rents/zsh/tree/debian) - For Debian based Linux distros
- [`android`](https://github.com/8rents/zsh/tree/android) - For use with Android OS
- [`msys2`](https://github.com/8rents/zsh/tree/msys2) - Linux like development platform for Windows. Download ZSH through Pacman package manager.

### Planned Platforms

- `debian-server` - For Debian based Linux distros without a desktop
- `mac` - For macOS computers

### Legacy Platforms

- `oh-my-brent-on-h` - My old "Oh my ZSH" config

### Non-Platform Branches

- `docs` - Default branch. Documentation on ZSH and this repository. Contains license and platform agnostic info.
- `blank` - Empty starting point branch

## Using this repository

After cloning the repository, switch to the correct branch for your platform.

```bash
# clone the repo
git clone https://github.com/8rents/zsh ~/.config/shells/zsh

# switch to the correct branch (debian, android, etc)
git switch <branch name>
```

---

**🤍2024 [Brenton Holiday](https://brenton.holiday)**
