#!/bin/bash
# suspend message display
pkill -u "$USER" -USR1 dunst

# lock the screen
i3lock -c 000000 -n

if [ $? == 0 ]
then
# resume message display
    pkill -u "$USER" -USR2 dunst
else
    echo "lock exited with nonzero status code"
fi
