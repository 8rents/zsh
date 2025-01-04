# zdotdir

> *A directory of aliases that zsh is set to read as the home directory.*

---

The actual configuration files are stored in the parent directory (config). They are relatively symlinked to the child directory (ZDOTDIR).

The filename on the left.is the name of the symlink and the default file name zsh looks for.

The link on the right is the more logically named file in the parent directory.

```bash
.zlogin  -> ../login.zsh
.zlogout -> ../logout.zsh
.zprofile-> ../profile.zsh
.zshenv  -> ../env.zsh
.zshrc   -> ../rc.zsh
```

