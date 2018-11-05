#!/bin/bash

notify-send "slack time over"

sleep 10

# suspend message display
pkill -u "trevor" -USR1 dunst

