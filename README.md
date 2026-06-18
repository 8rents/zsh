# ZSH config for Android

*Supported Platformns:*  **Android** __|__ [Linux](#) __|__ [Mac](#)

---

![shells](https://raw.githubusercontent.com/8rents/_/refs/heads/i/pictures/shells-1.png)

> *My ever evolving startup files for my still favorite shell*

---

## Contents

- [Installation & Use](#installation-use)
- [Goals & Philosophy of this Library](#goals-and-philosophy)
- [Loading Oder of Assessts in this Library](#loading-order-of-assessts-in-this-library)
- [How to add new Plugins](#how-to-add-new-plugins)
- [Credits & Links](#credits-links)

---

## Installation & use

1. Clone this repo to whereever you want to keep your zsh startup files. Mine live in `$HOME/dotfiles/shells/zsh`.
2. Run the `install.sh` script. It will ask a couple questions and you'll be done. 

---

## Environment Variable Path

The environent variable `$Z` is defined in `.zshenv` (`$Z/env.zsh`). I've renamed `~/.config` to be a nerd to `dotfiles` by redefining the `XDG_CONFIG_HOME` also set in the `.zshenv` file. When writig paths to tbis repo I'll use `$Z` instead of the full path.

## Goals and philosophy

Instead of treating our shells like these magical horned beasts that can't ever be fully understood (only overcomplicated and abstracted into emoji hell). We should resimplify, keep the best features, even if just the emojis, and keep it for what it is, a work horse (let's just call it a horse too, not that shells are horses or should be renamed such, they're just not unicorns). 

---

## Loading order of assets in this library

1. A .zshenv file is placed in user home pointing to: `$Z/.dotfiles`.  This is where the correctly named `.` zsh live.
2. Within that dotfiles folder is a `.zshrc` file with the `$Z` variable defined. All further zsh paths are relative to this path and within it.
3. The files in project root that are named the way I like them are just symlinks pointing to the dotfiles directory.

---

## Adding aliases

You can either add all your aliases to one file in the aliases folder, or create multiple files for eaxh scope. They will all be loaded in automatically in sort order.

## How to add new plug ins to this Library

To add new plugins to your installation, in the `zshrc` file find the `plugins` array. Use the GitHub username/ plugin name with each plugin on it's own line. You don't need to do anything else. If the plugins don't exist yet they will be downloaded and initialized all on their own

```bash
plugins=(
  "zsh-users/zsh-syntax-highlighting"
  "zsh-users/zsh-autosuggestions"
  "zsh-users/zsh-completions"
  "zsh-users/zsh-history-substring-search"
)
```

Be wary of adding too many plugins!

---

## Credits & Links

- [What to put in your zsh startup files (Sourceforge.io)](https://zsh.sourceforge.io/Guide/zshguide02.html) - Comprehensive overview of zsh and it's start up files.