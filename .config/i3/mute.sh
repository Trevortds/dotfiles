#!/bin/bash

notify-send "slack time over"

sleep 10

# suspend message display
pkill -u "trevor" -USR1 dunst

source /home/trevor/.config/i3/secrets

# put slack thing
http https://slack.com/api/users.profile.set token==$SLACK_TOKEN profile=='{"status_text":"checking slack only on the hour, call if its urgent","status_emoji":":mute:"}'
