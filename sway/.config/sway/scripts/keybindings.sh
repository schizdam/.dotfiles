#!/bin/bash

cat $HOME/.config/sway/keybindings/* 2>/dev/null | grep "bindsym" 2>/dev/null | less
