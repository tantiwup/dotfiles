#!/bin/bash

USER=USER EMAIL
PASS=PASSWORD

#Number of messages in inbox
COUNT=$(curl -u $USER:$PASS --silent "https://mail.google.com/mail/feed/atom" | grep -oPm1 "(?<=<fullcount>)[^<]+")

#Open mail on click
if [[ "${BLOCK_BUTTON}" -eq 1 ]]
then
   xdg-open https://mail.google.com
fi

#Hide if inbox is empty
if [[ $COUNT -ne 0 ]]; then
   echo $COUNT
fi

