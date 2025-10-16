#!/bin/bash

# Get the current layout
current_layout=$(swaymsg -t get_inputs | jq -r '.[] | select(.type=="keyboard") | .xkb_active_layout_name' | head -n1)

# Decide the new layout
if [ "$current_layout" = "English (US)" ]; then
    new_layout="cz"
else
    new_layout="us"
fi

# Change the layout
swaymsg input '*' xkb_layout "$new_layout"
