# Android ZSH config

> *8rents well kept zsh configuration*

---

[Docs](https://github.com/8rents/zsh) **|** [Understanding ZSH startup files](https://github.com/8rents/zsh/blob/docs/docs/startup-files.md) **|** **Android Installation**

---

## Installation

- **Termux** (aka `$HOME`): `/data/data/com.termux/files/home/`
- **Repo clone location:**  `$HOME/settings/shells/zsh/`


## Install *Termux* & Required Plugins

Make sure you have the **[F-Droid version of Termux (Direct download link)](https://f-droid.org/en/packages/com.termux/)** installed. The play store version isn't updated anymore. Plus F-Droid is all FOSS. 

### Optionally use a better f-droid frontend

> **Note:** _I recommend using **[Foxy Droid](https://f-droid.org/en/packages/nya.kitsunyan.foxydroid/)** or [Neo Store](https://f-droid.org/en/packages/com.machiav3lli.fdroid/) as your F-Droid client. They look and work a lot better than the plain fdroid client_. 

### Direct download links for the lazy

Here are some direct download links if you don’t want to install a separate app store:

- [Termux](https://f-droid.org/en/packages/com.termux/) - The terminal emulator itsel
- [Termux Styling](https://f-droid.org/en/packages/com.termux.styling/) - Styling plugin including prepackaged Nerd Fonts and color schemes
- [Termux Boot](https://f-droid.org/en/packages/com.termux.boot/) - Run > when Android Boot


## Preparing Termux

Once Termux and the required Termux plugins have been installed. Begin by updating the Android CLI and installing required CL apps

In Termux run the following commands:

```bash
# Install the prerequisites 
apt install wget git zsh -y

# Fully update the systrm
apt update && apt full-upgrade -y 

# Clone this repo into your dotfiles folder
git clone https://github.com/8rents/zsh ~/dotfiles/shells/zsh

# cd into the repo
cd ~/dotfiles/shells/zsh

# Switch to the android branch
git switch android

# Run the installer
./install.sh
```

## Install and move Oh my zsh

```bash
sh -c "$(wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
```

hit `y` when it asks if you want to change your shell to zsh.

Now move oh my zsh to the lib folder.

```bash
cp -r ~/.oh-my-zsh $ZSHDIR/lib && rm -rf ~/.oh-my-zsh
```

Now its not yet another hidden folder in your home folder.

## Choose your theme

In your .zshrc file set the theme here. You can look at what each looks like on the zsh themes page. If you're still unsure I recommend using a random theme each time you load zsh until you find one you like.

### Using a not included theme like oh my posh

First comment out theme line in your .zshrc file.

I'm using [oh-my-posh](https://ohmyposh.dev/) amy tbeme these days. I've included a configuration file for each shell theme.

Because oh my posh and starship are shell agnostic and work with any shell it is not included in the zsh folder.

---


## How this Repository is Structured

The repo is divided into 4 folders

- **lib** - Library files I did t develop.
- **config** - My configuration files
- **omz-custom** - Oh my zsh custom folder for user created pluginand theme
- **logs** - Auto generated log files

The content of logs and lib are ignored by git other than the README.md files.


### `config` directory 

The the files in config are to be directly edited.

The contents of config are:

- env.zsh
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

### Adding a symlink for starship or oh my posh

Both of these shell themes have their own folder in my dotfiles folder.

### To symlink oh my posh to the zsh folder

```bash
ln -s $DOTDIR/oh-my-posh $ZSHDIR/oh-my-posh
```

---

### `tree -a --gitignore` output

Here is the structure of the repo Output by tree (with gitignore option).

```bash
zsh/
├── LICENSE.md #repo license file
├── config #The main configuration files
│   ├── env.zsh
│   ├── login.zsh
│   ├── logout.zsh
│   ├── profile.zsh
│   ├── rc.zsh
│   └── zdotdir # zsh reads these symlinks to the parent dir
│       ├── .zlogin -> ../login.zsh
│       ├── .zlogout -> ../logout.zsh
│       ├── .zprofile -> ../profile.zsh                                     
│       ├── .zshenv -> ../env.zsh
│       └── .zshrc -> ../rc.zsh    
├── docs # articles on this repo and it's conventions
├── install.sh # Installer script
├── lib # Library files to ignore
├── logs # where log files are generated
├── omz-custom # custom themes and plugins for oh my zsh                                    
│   ├── themes
│   └── plugins
└── oh-my-posh # symlink to oh my posh config
``` 

---

## Enabled Oh my zsh plugins

Here is [the master list of oh my zsh plugins](https://github.com/ohmyzsh/ohmyzsh/wiki/plugins). Until i link each of the below individually, they can be cross referenced here.

---

2024 8rents

finder
- autojump
- colored-man-pages
- command-not-found
- common-aliases
- eza
- fasd
- fnm
- fzf
- gh
- git
- git-auto-fetch
- gnu-utils
- gpg-agent

2024 8rents
enced here.

- aliases
- alias-finder
- autojump
- colored-man-pages
- command-not-found
- common-aliases
- eza
- fasd
- fnm
- fzf
- gh
- git
- git-auto-fetch
- gnu-utils
- gpg-agent

2024 8rents
