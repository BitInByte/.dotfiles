#!/bin/bash

sketchybar --add item battery right                            \
           --set battery script="$PLUGIN_DIR/battery.sh"       \
                         update_freq=120                       \
                         icon.padding_left=8 \
                         icon.color=$BLACK \
                        icon.padding_right=0 \
                        label.padding_right=9 \
                        label.padding_left=6 \
                        label.color=$BLACK \
                        background.color=0xFFC9DDFF \
                        background.height=21 \
                        background.padding_right=2 \
           --subscribe battery system_woke power_source_change
