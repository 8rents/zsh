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

## About the start up / shutdown files

> ***From:** `man zshall` - Startup / Shutdown Files*
> 
> Commands are first read from /etc/zshenv; this cannot be overridden. Subsequent behaviour is modified by the `RCS` and `GLOBAL_RCS` options; the former affects all startup files, while the second only affectsglobal startup files (those shown here with an path starting with a /).  If one of the options is unset at any point, any subsequent startup file(s) of the corresponding type will not be read.  It is  also possible for a file in $ZDOTDIR to re-enable GLOBAL_RCS. Both RCS and GLOBAL_RCS are set by default.
>
> Commands are then read from $ZDOTDIR/.zshenv.  If the shell is a login shell, commands are read from /etc/zprofile and then
 $ZDOTDIR/.zprofile.  Then, if the shell is interactive, commands are read from /etc/zshrc and then $ZDOTDIR/.zshrc.  Finally, if the shell is a login shell, /etc/zlogin and $ZDOTDIR/.zlogin are read.
>
> When a login shell exits, the files $ZDOTDIR/.zlogout and then /etc/zlogout are read.  This happens with either an explicit exit via the exit or logout commands, or an implicit exit by reading end-of-file from the terminal.  However, if the shell terminates duee to exec'ing another process, the logout files are not read.  Thes  are also affected by the RCS and GLOBAL_RCS options.  Note also that the RCS option affects the saving of history files, i.e. if RCS is   unset when the shell exits, no history file will be saved.
>
>`If ZDOTDIR is unset, HOME is used instead.  Files listed above as being in /etc may be in another directory, depending on the  installation.
>
> As /etc/zshenv is run for all instances of zsh, it is important that it be kept as small as possible.  In particular, it is a good idea to put code that does not need to be run for every single shellbehind a test of the form `if [[ -o rcs ]]; then ...' so that it
will not be executed when zsh is invoked with the `-f' option.
>
> Any of these files may be pre-compiled with the zcompile builtincommand (see zshbuiltins(1)).  If a compiled file exists (named for the original file plus the .zwc extension) and it is newer than the original file, the compiled file will be used instead.

---

🤍 2024 **[Brenton Holiday](https://brenton.holiday)** 
**[Brenton Holiday](https://brenton.holiday)** 
ps://brenton.holiday)** 

*from: `man zshall` - Start up / Shut down section*

e will be saved.

If ZDOTDIR is unset, HOME is used instead.  Files listed above as being in /etc may be in another directory, depending on the  installation.

As /etc/zshenv is run for all instances of zsh, it is important that it be kept as small as possible.  In particular, it is a good idea to put code that does not need to be run for every single shellbehind a test of the form `if [[ -o rcs ]]; then ...' so that it
will not be executed when zsh is invoked with the `-f' option.

Any of these files may be pre-compiled with the zcompile builtincommand (see zshbuiltins(1)).  If a compiled file exists (named for the original file plus the .zwc extension) and it is newer than the original file, the compiled file will be used instead.

---

🤍 2024 **[Brenton Holiday](https://brenton.holiday)** 
**[Brenton Holiday](https://brenton.holiday)** 
ps://brenton.holiday)** 

*from: `man zshall` - Start up / Shut down section*

