#!/bin/bash

# resume message display
pkill -u "$USER" -USR2 dunst

notify-send "Time to answer slack messages!"
