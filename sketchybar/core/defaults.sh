#!/bin/bash

defaults=(
  updates=when_shown
  icon.font="BlexMono Nerd Font:Bold:14.0"  \
  icon.color=$ICON_COLOR
  icon.padding_left=4
  icon.padding_right=4
  label.font="BlexMono Nerd Font:Bold:16.0" \
  label.color=$LABEL_COLOR
  label.padding_left=4
  label.padding_right=4
  padding_right=$PADDINGS
  padding_left=$PADDINGS
  background.height=26
  background.corner_radius=9
  background.border_width=2
  popup.background.border_width=2
  popup.background.corner_radius=9
  popup.background.border_color=$POPUP_BORDER_COLOR
  popup.background.color=$POPUP_BACKGROUND_COLOR
  popup.blur_radius=20
  popup.background.shadow.drawing=on
)
sketchybar --default "${defaults[@]}"
