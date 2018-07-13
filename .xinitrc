#!/bin/sh

# $HOME/.xprofile is run by GDM so I put common startup items there
if [[ -e "$HOME/.xprofile" ]]; then
  source "$HOME/.xprofile"
fi

# i3 items
dbus-update-activation-environment --systemd DISPLAY
exec i3
