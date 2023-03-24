#!/bin/bash

bar=(
  height=32
  color=$BAR_COLOR
  border_width=2
  border_color=$BAR_BORDER_COLOR
  shadow=off
  corner_radius=10
  position=top
  sticky=on
  # sticky=off
  padding_right=10
  padding_left=10
  y_offset=$OFFSETS
  margin=$OFFSETS
)


sketchybar --bar "${bar[@]}"
