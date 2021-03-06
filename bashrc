# .bashrc
# User specific aliases and functions

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias ps='ps ax'

case "${OSTYPE}" in
darwin*)
  alias ls="ls -CFG"
  alias ll="ls -AlFhG"
  alias la="ls -laG"
  ;;
linux*)
  alias ls='ls -CF'
  alias ll='ls -AlFh --show-control-chars --color=auto'
  alias la='ls -la --color'
  ;;
esac

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# if there is a .bashrc.local, include it
if [ -f ~/.bashrc.local ]; then
    . ~/.bashrc.local
fi

export HISTSIZE=10000
export HISTFILESIZE=50000
#export HISTIGNORE=history*
#export HISTCONTROL=ignorespace
