#!/bin/bash

sketchybar --add item volume right                             \
           --set volume  script="$PLUGIN_DIR/volume.sh"        \
                         icon.padding_left=8 \
                         icon.color=$BAR_COLOR \
                        icon.padding_right=0 \
                        label.padding_right=9 \
                        label.padding_left=6 \
                        label.color=$BAR_COLOR \
                        background.color=$YELLOW \
                        background.height=21 \
                        background.padding_right=2 \
           --subscribe volume volume_change                    \
