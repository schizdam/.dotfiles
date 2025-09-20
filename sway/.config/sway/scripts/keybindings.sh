#!/bin/bash

cat $HOME/.config/sway/* $HOME/.config/sway/*/* 2>/dev/null | grep "bindsym" 2>/dev/null | less
