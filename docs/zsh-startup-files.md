# ![ZSH Icon](https://raw.githubusercontent.com/8rents/_/i/h1/zsh.png) ZSH Start up files

> *Understanding what each of the files included in this repository are used for*

---

## ZSH Startup Files

ZSH comes with several files that are used to configure the environment and control the start up and shut down of the shell.

The files are each for use with either an **Interactive Shell** which is a shell you interact with. Not one that you run only from scripts, or for ZSH as a **Login Shell** which is the shell that opens when you open your terminal (as opposed to one that you type into the command line to run a command).

Here is a list of the start up files and what each one is used for.

### Environment File - `.zshenv` or `env.zsh`

The environment file is always sourced (both in interactive and non-interactive shells). 

It should contain commands to set the command search path, plus other important environment variables.

Environment files should not contain commands that produce output or assume the shell is attached to a tty ([teletype terminal](http://www.linusakesson.net/programming/tty/index.php)).

### Run Commands File `.zshrc` or `rc.zsh`

Sourced only for interactive shells. This is the most essential file in configuration and the one you will tinker with the most. 

It is sourced in interactive shells. 

> *This is opposed to non-interactive shells like when you run a script. You're not directly interacting with it and providing input to get output.*

It should contain commands to set up aliases, functions, options, key bindings, etc. 

### Login File `.zlogin` or `login.zsh`

The login file is sourced in **login shells**. It should contain commands that should be executed only in login shells. 

> *When stated "login shell" this would contrast a shell that is not a "login shell" like typing the shell name on the command line and running a command or executing a command from a script with a specific shell.*
>
> *A non-login shell is any shell that doesn't start right when you open your terminal.*

The login file is not the place for alias definitions, options, environment variable settings, etc. As a general rule, it should not change the shell environment at all. Rather, it should be used to set the terminal type and run a series of external commands (fortune, msgs, etc).

This is basically the same as `.zprofile` except that it is **sourced after `.zshrc`**

### Logout File `.zlogout` or `logout.zsh`

The logout file is sourced when login shells exit.

### Profile File `.zprofile` or `profile.zsh`

`.zprofile` is meant as an alternative to `.zlogin` for ksh fans. The two are not intended to be used together, although this could certainly be done if desired. `.zlogin` and `.zprofile` are basically the same, however `.zprofile` is **sourced before `.zshrc`**

### File Source Order

The source order is the order in which the files are executed.

1. `.zshenv` **always sourced**
2. `.zprofile` *only interactive shells*
3. `.zshrc` *only interactive shells*
4. `.zlogin` *only for login shell*
5. `.zlogout` *only for login shell*

If you have zsh set as your main shell that opens when you open your terminal then it's both a login shell and an interactive shell. All of the above files would run at some point.

---

🤍 2024 **[Brenton Holiday](https://brenton.holiday)** 