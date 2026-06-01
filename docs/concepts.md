# Shell Concepts

> *This doc outlines basic shell and programming concepts*

## Environment

What the shell runs inside.

## Instances

An instance is created inside an environment when ZSH is called in anyway.

An instance can even create another instance (called a sub-shell or a child). This is
done by calling `zsh` as a command from zsh or using the sub shell syntax.

```
$(sub shell commands)
```

> commands entered inside the oarentisis are part of the child or aub shell
> instance.

### Different types of instances

- __Login__ - Opening a terminal window where zsh is the default shell. The opposite of this would be typing `zsh` into a bash or other shell prompt.
- __Interactive__ - The user enters commands into the shell prompt in a terminal window. The opposite of this would be calling a script and using zsh to parse it.
- __Child__ - when zsh is called as a command from a zsh instance. The oppisite of the
child is the parent (which spawns the child) (think relationships).
- __sub shell__ - when a zsh child instance uses the `$()` syntax to create a a
child. The oppisite of a sub is a master (calling) shell (think BDSM relationships).


## Execution Order

Values defined in multiple places are redefined each definition. 

### System, User, Instance

System files are for all users, user files are user specific, instances are spawned by
a user.

- System files are in `etc/zsh`
- User files are in whatever directory `$HOME` is defined as.

System files run right before the user counterparts. The values
cascade, meaning if the same value or option is defined in both user and system files, the value is reassigned to the uswr value (think states vs federal laws)

### Startup (dot) files

Start up files are called in the following order:

1. environment `zshenv` -__all instances__ - Defines the shell environment
2. profile `zprofile` - __Interactive instances__ - When terminal window opens
3. login `zlogin` - __Login shell instances__ - When the shell logs in
4. run commands `zshrc` - __interactive instances__ - When zsh is called by the user
or a terminal window opens
5. logout `zlogout` - __Login shell instanmces__ - When shell logs out or closes

User files are called right after the system files and trump any values defined in
both types of start up file.

## Variables

In programming variables are place holders for the values they hold. This allows the value to be used more than once or the value modified once for use in multiple places.

To declare a variable the syntax is:

```bash
VARNAME="value"
```

> Values should be double quoted by default unless trying to avoid variable expansion

### Variable Expansion

Expansion is when a variable name *expands* into it's value. ZSH can be configured to have this happen at different times.

To call a variable you prefux its name with a `$`

In the above example `$VARNAME` expands to be `value`

A variables lifespan ir scope is usually limited to the shell instance unless they are exported to the shells environment. different instances do not share them.

### Environmental variables

The environment is a special region outside the shell that the shell runs inside, and zsh has to be told to put a copy there as well as keeping one of its own. For a variable to become environmental instead of instance based it's declaratiin needs to be prefixed with `export`.

When variables are exported to the environment, child processes of the shell instanc will inherit them.

The syntax is:

```bash
export VARNAME="value"
```

#### Futher Reading

- https://www.pearsonitcertification.com/articles/article.aspx?p=3178909&seqNum=4