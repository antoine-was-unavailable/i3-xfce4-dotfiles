#!/bin/bash


# Grep last update from pacman.log and convert it to epoch time
LAST_UPDATE=$(date -d $(cat /var/log/pacman.log | grep "starting full system upgrade" | tail -1 | cut -c 2-11) +%s)

# Convert today into epoch time
TODAY=$(date +%s)


# Number of days since the last update
DELTA=$(( ($TODAY - $LAST_UPDATE) /3600/24 ))



if (( $DELTA >= 7 ));then
	dunstify -I $HOME/.config/polybar/scripts/arch_update/arch_logo.png "Update Notifier" "It has been "$DELTA" since the last update! You may want to perform a full system update."
	polybar-msg action "#arch_update.module_show"
fi
