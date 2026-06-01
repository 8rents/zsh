# *Android* ZSH

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

1. Clone this repo to whereever you want to keep your zsh startup files. Mine live in `$HOME/.config/shells/zsh`.
2. Run the install.sh script. It will ask a couple questions and you'll be done. 

---

## Goals and philosophy

Instead of treating our shells like these magical horned beasts that can't ever be fully understood (only overcomplicated and abstracted into emoji hell). We should resimplify, keep the best features, even if just the emojis, and keep it for what it is, a work horse (let's just call it a horse too, not that shells are horses or should be renamed such, they're just not unicorns). 

---

## Loading order of assets in this library

1. A .zshenv file is placed in user home pointing to: `$HOME/.config/shells/zsh/.dotfiles`.  This is where the correctly named `.` zsh live.
2. Within that dotfiles folder is a `.zshrc` file with the `$Z` variable defined. All further zsh paths are relative to this path and within it.
3. The files in project root that are named the way I like them are just symlinks pointing to the dotfiles directory.

---

## How to add new plug ins to this Library

The `lib` folder is a git ignored folder used for libraries of code that you do
not need to directly modify to use them within your own codebase.

---

## Credits & Links

- [What to put in your zsh startup files (Sourceforge.io)](https://zsh.sourceforge.io/Guide/zshguide02.html) - Comprehensive overview of zsh and it's start up files.