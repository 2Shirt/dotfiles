#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '

## Load aliases
. $HOME/.aliases

## Add $HOME/.bin to PATH
export PATH="$HOME/.bin:$PATH"
