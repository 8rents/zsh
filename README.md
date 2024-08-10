# Oh my Brent's on H!    
*Brent's Oh my ZSH theme*

**Location:**`/data/data/com.termux/files/home/`   
**termux home folder:** `~/settings/shells/zsh/oh-my-brent-on-h/`

> #### *Brent's well maintained Oh my ZSH theme, lovingly called, "Oh my Brent on H". Designed to work with termux terminal on Android. Rooted or unrooted are all welcome.*

***

## Installation

1. ### Install Termux

   Make sure you have the **[F-Droid version of Termux](https://f-droid.org/en/packages/com.termux/)** installed. The play store version isn't updated anymore. Plus F-Droid is all FOSS

   > **Note:** _I recommend using **[Foxy Droid](https://f-droid.org/en/packages/nya.kitsunyan.foxydroid/)** as your F-Droid client_. 

2. ### Upgrade the System  

   Do a `full-upgrade` to Termux and it's binaries.

   ```bash
   apt update && /
   apt full-upgrade -y
   ```

3. ### Install the prerequisites 

   Install `wget`, `git`, and `zsh` if you haven't already. 

   ```bash
   apt install wget git zsh -y
   ```

4. ### Install _Oh my zsh_

   **[Install oh my zsh](http://ohmyz.sh/)** with `wget`. 

   ```bash
   sh -c "$(wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
   ```

5. ### Make a folder to hold Settings

   I make a folder called `settings` in the Termux home folder. Inside it I have a folder to hold all my `shells` and inside that a folder for `zsh`. I also hold app settings inside the settings folder. Things like wget, git etc

   ```bash
   mkdir -p ~/settings/shells/zsh
   ```

6. Clone `oh-my-brent-on-h` into the zsh folder

7. Run the installer 

## Choose your theme

I'm using [Starship](#) these days. It can be installed via `brew` or `apt` and is super easy to configure via a `toml` file. Here's a [link to my configuration file](#). 

***

🤍 2023 **[Brenton Holiday](https://allmylinks.com/8rents)** 