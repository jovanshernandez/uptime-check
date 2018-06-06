#!/bin/bash

up="`uptime | sed -n -e 's/.* up \([0-9][0-9]*\) day.*/\1/p'`"
 if [ -n "$up" ] && [ "$up" -gt 14 ]
  then osascript -e 'tell app "Finder" to display dialog "Your computer uptime has exceeded 14 days. Please consider restarting your computer sometime today for maintanence and optimal performance. Thank you!

Your Favorite IT Manager"'
fi
