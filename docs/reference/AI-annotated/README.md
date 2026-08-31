# AI Created Modular ZSH Config

> *The following zsh config is modular and separated by different areas of concern*

---

## Concept

AI has generated a fully annotated zshrc with only the default options enabled so that it mirrors a blank zsh. 

Each group of configs is further separated into areas of concern like changing directories, ZLE etc. Each of these areas can be further fleshed out with all the other (disabled) options annotated. 

Having the default files present and running additional configs on top of these in a cascading manner will make it trivial to switch back. 

### RC File Compilation

These files should be benchmarked against the same configs that are unannotated and uglified. 

If there is a substantial difference it would make sense to create a simple zsh Config compiler that simply uglifies the a production file when the user files are altered. 

#### Simple compilation would entail:

1. Compiling to a single file
2. Stripping all comments
3. Putting all `setopt` and `unsetopt` options on the same line
4. Including aliases in file

### Benchmark testing

I can benchmark a manually compiled file with a shell Ben h marking tool to see if this is a path I should go down. If there is not a substantial difference the Dev and prod files compilation will not be nessessary. 

## Load Order

`zdotdit` is set as the `ZDOTDIR` where start up files are dead
