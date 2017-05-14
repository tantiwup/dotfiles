#!/bin/bash

SIGNAL=$(sudo cat /proc/net/wireless | awk NR==3{'print ($4+0)<0?($4+0)*-1:($4+0)'})

SSID="$(iw dev wlp9s0 info | grep ssid | cut -d " " -f 2-)"

lowsig="\ue218"
medsig="\ue219"
highsig="\ue21a"

rampsignal0=
rampsignal1=
rampsignal2=
rampsignal3=
rampsignal4=


if [ $SIGNAL -lt 50 ]
then
   echo "%{F#aaff77}"  " " "%{F#d3d3d3}$SSID"

elif [ $SIGNAL -lt 70 ]
then
   echo "%{F#ffff94}"  " " "%{F#d3d3d3}$SSID"
else
   echo "%{F#ff5555}"  " " "%{F#d3d3d3}$SSID"
fi
