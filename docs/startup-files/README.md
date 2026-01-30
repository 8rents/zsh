# ZSH Start Up Files 

> *Understanding the use and loading order of each typoe of zsh start up file*

--- 

- __`.zshenv`__ - This file is sourced before all other start up files and for every instance of zsh.
- __`.zshrc`__ - This file is sourced only for interactive instances of the shell. Meaning that your typing commands into it in a terminal vs being a script. This is the most frequent start up file you'll work with.
- __`.zlogin`__ - This is sourced only when zsh is the login shell. The login shell is the shell that runs when you open a new terminal window. More specifically it is the shell set with `chsh`. This contrasts say having bash being your login shell and typing `zsh` to run something or using zsh as a subshell with a different primary (login) shell. 
- __`.zlogout`__ - Sourced only when zsh is the login shell, but when it's logging out. Read last in the line of files.

## Sourcing Order

1. `.zenv` - you need every instance of zsh to do something special
2. `.zlogin` or `.zprofile` - you need to customize only when it's the primary login shell
3. `.zshrc` - add special commands for when you're interactively working with it in a terminal
4. `.zlogout` - special configs when it's the login shell and you close the tmux pane or terminal tab.
