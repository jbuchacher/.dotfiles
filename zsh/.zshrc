# -- Zsh -----------------------------------------------------------------------
# Path to your oh-my-zsh configuration.
ZSH="/Users/jbuchacher/.oh-my-zsh"

# -- Editor --------------------------------------------------------------------
EDITOR="emacsclient"
ALTERNATE_EDITOR=""

# -- Theme ---------------------------------------------------------------------
# Set name of the theme to load.
# Look in /Users/jbuchacher/.dotfiles/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="theunraveler"

# -- Plugins -------------------------------------------------------------------
# Plugins can be found in /Users/jbuchacher/.dotfiles/.oh-my-zsh/plugins/
# Custom plugins may be added to /Users/jbuchacher/.dotfiles/.oh-my-zsh/custom/plugins/
#
# Which plugins would you like to load?
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(ant git history-substring-search zsh-syntax-highlighting)

# -- Oh My Zsh -----------------------------------------------------------------
source $ZSH/oh-my-zsh.sh

# -- Options -------------------------------------------------------------------
unsetopt correct_all
unsetopt correct

# -- Aliases -------------------------------------------------------------------
source $HOME/.dotfiles/.aliases

if [[ -f "$HOME/.aliases" ]]; then
    source $HOME/.aliases
fi

# -- Term ----------------------------------------------------------------------
TERM=xterm-256color

export NVM_DIR="/Users/jbuchacher/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm


ulimit -n 2560

eval "$(direnv hook zsh)"

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
