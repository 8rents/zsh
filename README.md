# ![ZSH Icon](https://raw.githubusercontent.com/8rents/_/i/h1/zsh.png) Debian Linux ZSH Config

> *My ZSH Configuration for Debian Linux.*

---

[Docs](https://github.com/8rents/zsh) **|** [Understanding ZSH startup files](https://github.com/8rents/zsh/blob/docs/docs/startup-files.md) **|** **Debian Installation**

---

## Installation

- **Repo clone location:**  `$HOME/.config/shells/zsh/`

---

1. Make sure that your system is fully upgraded. Do a `full-upgrade` in `apt`.
   ```bash
   apt update && /
   apt full-upgrade -y
   ```
3. Install the prerequisites like `wget`, `git`, and `zsh` if you haven't already. 
   ```bash
   apt install wget git zsh -y
   ```
4. Make a folder to hold Settings
   I make a folder called `.config` in my user home folder. Inside it I have a folder to hold all my `shells` and inside that a folder for `zsh`. I also hold app settings inside the settings folder. Things like `wget`, `git` etc
   ```bash
   mkdir -p ~/.config/shells
   ```
5. Clone this repository into `~/.config/shells/zsh`
6. Run the installer 

## Choose your theme

I'm using [starship](https://starship.rs/) or [oh-my-posh](https://ohmyposh.dev/) these days. I've included a configuration file for each shell theme.

---

🤍 2024 **[Brenton Holiday](https://brenton.holiday)** 