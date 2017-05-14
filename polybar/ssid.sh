#!/bin/bash

ssid="$(iw dev wlp9s0 info | grep ssid | cut -d " " -f 2-)"
echo $ssid



