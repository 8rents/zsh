# Brent's Android ZSH Installlation

---

## Prerequisites

1. Make sure that the system is updated running (`apt full-upgrade -y` or the like).
2. Make sure that the newest version of `zsh` is installed (`apt update && apt install zsh -y` or the like). 

## First steps

### Creating a zshrc file

The `.zshrc` file is like the main preferences file for your shell. It's easier referred to as an "RC" file.(Reserve commands or something)

1. You can start with a completely blank one by simply running `touch $HOME/.zshrc`.
2. You could do something like install  `oh-my-zsh`, which is a really amazing framework for theming and plugins. This would create a `.zshrc` file tailored for the framework and is a quick speed boost getting started,   
3. You could run something like `zsh-newuser-install` which would run the interactive setup and let you create one from scratch.

I'm going to go with #3 myself, but for those of you who want to go with oh-my-zsh which I do recommend for most beginners ehere's how to do it.

#### Installing *Oh my ZSH!!*

```bash
# Make sure the system is fully upgraded
apt full-upgrade -y

# Make sure that zsh, git and wget is installed 
apt update
apt install zsh git wget -y

# Installs oh my zsh (via wget)
sh -c "$(wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
```

Say yes to changing your default shell to zsh when it asks. After all those commands are complete you should be in zsh with oh my zsh installed. 

## Starting from scratch

Right after installing zsh the first thing you can do is `chsh` then type `zsh` when prompted. This will set your new login shell to be zsh. A login shell is whatever shell automatically opens when you open a terminal window. 

Shells that you run in a terminal are also called interactive shells. You can change your shell when ever you like just by typing the name of it. You can type `bash` any time and start using bash again. Using the `chsh` command sets it to be your login shell. Comparatively, a non-interactive shell would be like writing a script in bash and running it. Your not interactively using the shell it's just runninmg commands from a script. 

### Start up files

The zshrc file is the config file for zsh when used as a  *interactive shell*. There are several start up configuration files.

1. `.zshenv` 
2. `.zlogin`
3. `.profile` 
4. `.zshrc`
5. `.zlogout`

zsh will look for these files in `$HOME` (~). You can also change the location of these files by setting the environmental variable `$ZDOTDIR` in the .zshenv file
