# env.zsh (.zshenv)

# .zshenv is sourced on all invocations of the shell, unless the -f option is set. 

# It should contain commands to set the command search path, plus other important 
# environment variables.

# .zshenv should not contain commands that produce output or assume the shell is 
# attached to a tty.

# Set the folder that zsh will look for dotfiles
export ZDOTDIR="$HOME/.config/shells/zsh/config/zdotdir"
