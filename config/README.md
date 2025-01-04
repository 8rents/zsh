# ![ZSH Icon](https://raw.githubusercontent.com/8rents/_/i/h1/zsh.png) Android ZSH Config

> *My ZSH Configuration for Android devices. *

---

[Docs](https://github.com/8rents/zsh) **|** [Understanding ZSH startup files](https://github.com/8rents/zsh/blob/docs/docs/startup-files.md) **|** **Android Installation**

---

## Installation

- **Termux** (aka `$HOME`): `/data/data/com.termux/files/home/`
- **Repo clone location:**  `$HOME/settings/shells/zsh/`

---

1. Install *Termux*
   Make sure you have the **[F-Droid version of Termux](https://f-droid.org/en/packages/com.termux/)** installed. The play store version isn't updated anymore. Plus F-Droid is all FOSS. 
   
   > **Note:** _I recommend using **[Foxy Droid](https://f-droid.org/en/packages/nya.kitsunyan.foxydroid/)** or [Neo Store](https://f-droid.org/en/packages/com.machiav3lli.fdroid/) as your F-Droid client_. 
   
   Here are some direct download links if you don’t want to install a separate app store:
   
   - [Termux](https://f-droid.org/en/packages/com.termux/) - The terminal emulator itself
   - [Termux Styling](https://f-droid.org/en/packages/com.termux.styling/) - Styling plugin including prepackaged Nerd Fonts and color schemes
   - [Termux Boot](https://f-droid.org/en/packages/com.termux.boot/) - Run Scripts when Android Boots
   
2. Upgrade the System  
   Do a `full-upgrade` to Termux and it's binaries.
   
   ```bash
   apt update && /
   apt full-upgrade -y
   ```
3. Install the prerequisites 

    Install `wget`, `git`, and `zsh` if you haven't already. 
    ```bash
    apt install wget git zsh -y
    ```
4. Clone this repo (specifying a long directory path that doesn't exist is the equivalent as running `mkdir -p`
   ```
   git clone https://github.com/8rents/zsh $HOME/.config/shells/zsh
   ```
5. Switch to the correct branch.
    ```
   cd $HOME/.config/shells/zsh
   git switch android
    ```
7. Run the installer 

## Choose your theme

I'm using [starship](https://starship.rs/) or [oh-my-posh](https://ohmyposh.dev/) these days. I've included a configuration file for each shell theme.

---

🤍 2024 **[Brenton Holiday](https://brenton.holiday)** 
eme.

---

🤍 2024 **[Brenton Holiday](https://brenton.holiday)** 
