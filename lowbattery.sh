#!/bin/bash

BATTINFO=`acpi -b`
if [[ `echo $BATTINFO | grep Discharging` && `echo $BATTINFO | cut -f 4 -d " "` < 15% ]] ; then
    MESSAGE=`echo $BATTINFO`
    DISPLAY=:0.0 /usr/bin/i3-nagbar -m "Low $MESSAGE"
fi
