# ![ZSH Icon](https://raw.githubusercontent.com/8rents/_/i/h1/zsh.png) Staying current with upstream changes

> *So you’ve created a fork of a platform branched configuration repository. Now you want to stay current with any changes made to it while still maintaining your own copy.*

---

## Documentation Articles

- [Installing](../README.md)
- [Understanding ZSH startup files](../zsh-startup-files/README.md)
- [Using Platform Branched Repositories](../platform-branching/README.md)
- **Staying current with Upstream remote repositories**

---

### Verifying the `upstream` Repository in your fork

The fork you made of my repo that is in your account is called the `origin`. You will obviously want to keep that so you can push your changes to GitHub. However you’ll also want to have `upstream` set in order to receive updates.

```bash
# View all the remotes
git remote -v
```

> You will likely see output like this:

```bash
> origin  https://github.com/YOUR-USERNAME/zsh.git (fetch)
> origin  https://github.com/YOUR-USERNAME/zsh.git (push)
```

This mean you only have one remote (aka the `origin`) to fetch and push to.

Now add the original as the `upstream`

```bash
# Add my repo back as upstream
git remote add upstream https://github.com/8rents/zsh.git
```

Then view remotes again to verify that both remotes are set:

```bash
# View all the remotes again
git remote -v
```

>  You should now see output like this:

```bash
> origin  https://github.com/YOUR-USERNAME/zsh.git (fetch)
> origin  https://github.com/YOUR-USERNAME/zsh.git (push)
> upstream  https://github.com/8rents/zsh.git (fetch)
> upstream  https://github.com/8rents/zsh.git (push)
```

You now have your repo to push changes you make to, and my repo that you forked to pull/fetch changes from to update yours.

## Staying current with the upstream repo

Here we will be syncing any changes made to the `android` branch since the repository was forked.

 ```bash
# Fetch a specific branch
git fetch upstream android

# Switch to the branch that you want to sync with the upstream
git checkout android

# Merge the current branch with the upstream data
git merge upstream/android

# Push the changes to your account
git push origin android
 ```

You’ve now synced the android branch to your own account.

---

🤍 2024 **[Brenton Holiday](https://brenton.holiday)** 