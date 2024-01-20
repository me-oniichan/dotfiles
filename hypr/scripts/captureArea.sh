#!/bin/bash

grim -g "$(slurp)" -t jpeg $HOME/Pictures/Screenshot/$(date +'%s_grim.jpg')
hyprctl notify 5 2000 "#111111" "Screenshot Saved"
