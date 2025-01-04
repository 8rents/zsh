# Android ZSH config

> *8rents well kept zsh configuration*

---

[Docs](https://github.com/8rents/zsh) **|** [Understanding ZSH startup files](https://github.com/8rents/zsh/blob/docs/docs/startup-files.md) **|** **Android Installation**

---

## Installation

- **Termux** (aka `$HOME`): `/data/data/com.termux/files/home/`
- **Repo clone location:**  `$HOME/settings/shells/zsh/`


1. Install *Termux*
   Make sure you have the **[F-Droid version of Termux (Direct download link)](https://f-droid.org/en/packages/com.termux/)** installed. The play store version isn't updated anymore. Plus F-Droid is all FOSS. 
   
   > **Note:** _I recommend using **[Foxy Droid](https://f-droid.org/en/packages/nya.kitsunyan.foxydroid/)** or [Neo Store](https://f-droid.org/en/packages/com.machiav3lli.fdroid/) as your F-Droid client. They look and work a lot better than the plain fdroid client_. 
   
Here are some direct download links if you don’t want to install a separate app store:

- [Termux](https://f-droid.org/en/packages/com.termux/) - The terminal emulator itsel
- [Termux Styling](https://f-droid.org/en/packages/com.termux.styling/) - Styling plugin including prepackaged Nerd Fonts and color schemes
- [Termux Boot](https://f-droid.org/en/packages/com.termux.boot/) - Run > when Android Boot


```basb
# Install the prerequisites 
apt install wget git zsh -y

# fully update the systrm
apt update && apt full-upgrade -y 

# clone the repo into a settings folder
git clone https://github.com/8rents/zsh ~/settings/shells/zsh

# cd into the repo
cd ~/settings/shells/zsh

# switch to the android brqnch
git switch android

#Run the installer  
./install.sh
```

## Choose your theme

I'm using [oh-my-posh](https://ohmyposh.dev/) amy tbeme these days. I've included a configuration file for each shell theme.

---


## Repository Structure

The repo is divided into 3 folders

- **lib** - Library files I did t develop.
- **config** - My configuration files
- **logs** - Auto generated log files

The content of logs and lib are ignored by git other than the README.md files.


### `config` directory 

The the files in config are to be directly edited.

The contents of config are:

- env.zsh
- install.sh
- login.zsh
- logout.zsh
- profile.zsh
- rc.zsh

#### `config/zdotdir` directory 

The sub directory of config is `zdotdir`. The zdotdir is defined in the .zshenv file as zdotdir which zsh looks for the config files by their default names

```
.zlogin -> ../login.zsh
.zlogout -> ../logout.zsh
.zprofile -> ../profile.zsh
.zshenv -> ../env.zsh
.zshrc -> ../rc.zsh
```

These files are not to be edited directly as they are just symlinks. 

---

2024 8rents
