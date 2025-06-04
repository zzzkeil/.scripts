#!/bin/bash
sleep 5
flatpak update
if [ $? -ne 0 ]; then
    notify-send -t 100000 -i /usr/share/icons/octopi_red.png "Flatpak Updates Available" "There are updates available for Flatpak applications."
    else
    notify-send -t 5000 -i /usr/share/icons/octopi_green.png "No Flatpak Updates" "relax"
fi
