# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="davidxia"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git autojump vagrant npm)

source $ZSH/oh-my-zsh.sh
# Customize to your needs...

## aliases
alias zshconfig="vim ~/.zshrc"

# This loads RVM into a shell session.
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"

HOSTNAME=`hostname`

if [[ $HOSTNAME == 'Philips-MacBook'* ]]; then

  [[ -s `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh

  ### Added by the Heroku Toolbelt
  export PATH="/usr/local/heroku/bin:$PATH"

  export JAVA_HOME=`/usr/libexec/java_home -v 1.8`

  # The next line updates PATH for the Google Cloud SDK.
  source '/Users/schweiger/google-cloud-sdk/path.zsh.inc'

  # The next line enables shell command completion for gcloud.
  source '/Users/schweiger/google-cloud-sdk/completion.zsh.inc'
fi

export PATH="/usr/local/sbin:$PATH"
