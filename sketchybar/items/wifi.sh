#!/bin/bash

sketchybar --add item wifi right                               \
           --set wifi    script="$PLUGIN_DIR/wifi.sh"          \
                         icon.padding_left=8 \
                        icon.padding_right=0 \
                        label.padding_right=9 \
                        label.padding_left=6 \
                        label.color=0xffeceff4 \
                        background.color=0xFFDE6C83 \
                        background.height=21 \
                        background.padding_right=2 \
                         icon=直                               \
           --subscribe wifi wifi_change                        \
