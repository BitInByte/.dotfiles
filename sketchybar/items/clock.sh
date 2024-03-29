#!/bin/bash

sketchybar --add item clock right                              \
           --set clock   update_freq=10                        \
                         icon=                               \
                         icon.padding_left=8 \
                        icon.color=$BAR_COLOR \
                        icon.padding_right=0 \
                        label.padding_right=9 \
                        label.padding_left=6 \
                        label.color=$BAR_COLOR \
                        background.color=$BLUE \
                        background.height=21 \
                        background.padding_right=2 \
                         script="$PLUGIN_DIR/clock.sh"         \
