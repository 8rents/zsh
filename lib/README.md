# ZSH Libraries

> *A directory to hold all plugins and library files that you add to zsh to extend it's fucntionallity, but do not need to make any modifications to do so.*

---

Any software that you clone/download to add to zsh should be added into this folder. Tis fgolder is meant to house any software that you do not need to directly modify to add or use with your zsh installation.

Everything in here is excluded from git b y default.

## How to add a plugin or library to use

THere's two main way to go about doiing this.

1. **[Recommended]** USe Antigen to install plugins
2. Add each item as a sub module.
3. Clone the liobrary into place and then link it. You will need to make sure that git is set to ignore all of the files and folders in this directory beforehand.

I'll go though installing the `zsh-syntax-highlighting` library both ways.

## Using Antigen

See the main documentation on [using Antigen](../docs/antigen/README.md) to manage plugins.


### Installing a plugin as a sub-module

> You need ot make sure you have your git configured to make dealing with sub-modules easy. Foortunately since you're using my configurations it's already set up that way.

Let's install the `zsh-syntax-highlighting` plugin from the amazing [zsh users](https://github.com/zsh-users) account on GitHub.

---

## Essential Plugins

- https://github.com/ohmyzsh/ohmyzsh/blob/master/plugins/colored-man-pages/README.md
- https://github.com/zsh-users/zsh-syntax-highlighting
- https://github.com/zsh-users/zsh-autosuggestions
- https://github.com/zsh-users/zsh-completions
- https://github.com/zsh-users/zsh-history-substring-searchhttps://

## Plugin Collections

- [OH my zsh](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins)
- [ZSH users](https://github.com/zsh-users)
