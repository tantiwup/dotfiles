#!/bin/bash

USER=tantiwup@uci.edu
PASS=brown1122
COUNT= curl -u $USER:$PASS --silent "https://mail.google.com/mail/feed/atom" | grep -oPm1 "(?<=<fullcount>)[^<]+"

if [[ "$COUNT" -eq 0 ]]; then
   echo "LOL"
fi
