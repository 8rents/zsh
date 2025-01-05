# OMZ Custom Plugins

> *The custom directory for oh my zsh plugins*

`$ZSH_CUSTOM/plugins` or `~/dotfiles/shells/zsh/omz-custom/plugins`

---

Plugins must be in their own directory with the extension `plugin.zsh`
README.md

## Special Plugins (from `zsh-users`)

Usually this directory is for plugins you create yourself, however some plugins need to be installed manually. The amazing plugins from zsh-users are like this.

1. `zsh-syntax-highlighting`
2. `zsh-autosuggestions`
3. `zsh-history-substring-search`
4. `zsh-completions`

The rc.zsh file should already have them listed in the plugins section. if not add them in.

You'll just need to clone the repos to the `custom/plugins` directory.

Paste the following into terminal to clone the 4 repos:

```bash
git clone https://github.com/zsh-users/zsh-autosuggestions.git  $ZSH_CUSTOM/plug-ins/zsh-autosuggestions

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git  $ZSH_CUSTOM/plugins/zsh-syntax-highlighting

git clone https://github.com/zsh-users/zsh-history-substring-search $ZSH_CUSTOM/plugins/zsh-history-substring-search

git clone https://github.com/zsh-users/zsh-completions $ZSH_CUSTOM/plugins/zsh-completions 
```
Then start a new zsh instance.

If you run into any issues consult the [install instructions](https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md)
