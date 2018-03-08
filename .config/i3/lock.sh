#!/bin/bash
# suspend message display
pkill -u "$USER" -USR1 dunst

# lock the screen
i3lock -c 000000 -n

# resume message display
pkill -u "$USER" -USR2 dunst
