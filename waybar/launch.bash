#!/bin/bash

# by Enrico "akaEnrico" Palma (2025)

# Checks machine hostname
HOSTNAME=$(uname -n)

# Quit existing waybar instances
# killall waybar

# Loads waybar configuration based on hostname
if [[ "$HOSTNAME" == "fortuna" ]]; then
  waybar -c ~/dotfiles/waybar/fortuna_config -s ~/dotfiles/waybar/style.css &
  echo "Waybar configs loaded for fortuna"

elif [[ "$HOSTNAME" == "leviathan" ]]; then
  waybar -c ~/dotfiles/waybar/leviathan_config -s ~/dotfiles/waybar/style.css &
  echo "Waybar configs loaded for leviathan"

else
  waybar &
  echo "No available config for $HOSTNAME, rendering default configs"
fi
