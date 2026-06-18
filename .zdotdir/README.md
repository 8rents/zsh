# `zsh/.zdotdir`

> *The actual folder from which your zsh comfigs are read from*

---

> [!warning]
> __I recommend not editing these files directly and working with the symlinks (.zsh files) in the respository root__

The `.zdotdir` is the "real" zsh start up files folder.

It is defined in `.zshenv` with the environment variable `ZDOTDIR`.

> [!note]
> Where as `$Z` is the path to the zsh repo.

```
export ZDOTDIR="$Z/.zdotdir"
```

The `ZDOTDIR` variable sets where to read / write start up files to / from.

## Helpful Aliases

If it's not clear which is which....

- `env.zsh` -> `.zdotdir/.zshenv` - Run for all instances
- `profile.zsh` -> `.zdotdir/.zprofile` - Login Shell instances
- `rc.zsh` -> `.zdotdir/.zshrc` - Interactive Shell instances
- `login.zsh` -> `.zdotdir/.zlogin` - Login Shell instances (after rc)
- `logout.zsh` -> `.zdotdir/.zlogout` - Login Shell instances (when exiting)

Anyway... Stay out of this directory!