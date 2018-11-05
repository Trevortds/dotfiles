#!/bin/bash

# resume message display
pkill -u "trevor" -USR2 dunst

notify-send "Time to answer slack messages!"

source /home/trevor/.config/i3/secrets

# put slack thing
http https://slack.com/api/users.profile.set token==$SLACK_TOKEN profile=='{"status_text":"available until 10 past","status_emoji":":loud_sound:"}'

