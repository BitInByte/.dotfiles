#!/bin/bash

apple_logo=(
  icon=􀣺
  # icon.font="$BlexMono Nerd Font:Black:16.0"
  icon.color=$GREEN
  padding_right=15
  label.drawing=off
)

sketchybar --add item apple.logo left                  \
           --set apple.logo "${apple_logo[@]}"  
