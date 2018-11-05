#!/bin/bash

notify-send "slack time over"

# suspend message display
pkill -u "$USER" -USR1 dunst

