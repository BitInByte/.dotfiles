#!/bin/bash

sketchybar --add item wifi right                               \
           --set wifi    script="$PLUGIN_DIR/wifi.sh"          \
                         icon.padding_left=8 \
                        icon.padding_right=0 \
                         icon.color=$BAR_COLOR \
                        label.padding_right=9 \
                        label.padding_left=6 \
                        label.color=$BAR_COLOR \
                        background.color=$RED \
                        background.height=21 \
                        background.padding_right=2 \
                         icon=直                               \
           --subscribe wifi wifi_change                        \
