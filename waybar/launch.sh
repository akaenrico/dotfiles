#!/bin/bash
#
#
#
# __    __ ____ __  _______   ____  _____
# \ \/\/ // () \\ \/ /| () ) / () \ | () )
#  \_/\_//__/\__\|__| |_()_)/__/\__\|_|\_\
#
#
#
# by Enrico "akaEnrico" Palma

# Checks machine hostname
HOSTNAME=$(uname -n)

# Quit existing waybar instances
killall waybar
sleep 0.2

# Sets config path based on hostname
case "$HOSTNAME" in
"fortuna")
  CONFIG=~/dotfiles/waybar/fortuna_config.jsonc
  ;;
"leviathan")
  CONFIG=~/dotfiles/waybar/leviathan_config
  ;;
*)
  echo "Unknown hostname: $HOSTNAME"
  echo "Falling back to default waybar config."
  waybar &
  exit 0
  ;;
esac

# Style path
STYLE=~/dotfiles/waybar/style.css

# Checks if config file exists
if [[ -f "$CONFIG" ]]; then
  # Checks if style.css exists
  if [[ -f "$STYLE" ]]; then
    waybar -c "$CONFIG" -s "$STYLE" &
    echo "Waybar configs loaded for $HOSTNAME with styles"
  else
    waybar -c "$CONFIG" &
    echo "Waybar configs loaded for $HOSTNAME, BUT styles were not found"
  fi
else
  echo "Expected configs for $HOSTNAME, not found at:"
  echo "   $CONFIG"
  echo "Falling back to default configs"
  waybar &
fi
