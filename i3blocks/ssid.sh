#!/bin/bash

#print ssid
ssid="$(iw dev wlp9s0 link | grep SSID | cut -d " " -f 2-)"
echo $ssid
echo "#FF0000"



