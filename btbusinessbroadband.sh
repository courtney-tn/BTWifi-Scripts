#!/bin/sh

# Configuration Settings

IDENTITY=''
PASSWORD=''

# Begin script

# Check login status: mostly taken from https://gist.github.com/sscarduzio/05ed0b41d6234530d724 pretty much with some other mods by me
IS_LOGGED_IN=$(wget --no-check-certificate "https://www.btwifi.com:8443/home" --timeout 30 -O - 2>/dev/null | grep "accountLogoff")

if [ "$IS_LOGGED_IN" ]
    then
      echo 'Error: you are already logged in.'

    else
    echo 'Attempting to auto-login using provided credentials...'
    OUT=$(wget -qO - --no-check-certificate --no-cache --post-data "username=$IDENTITY&password=$PASSWORD" "https://www.btwifi.com:8443/ante?partnerNetwork=btb")

    ONLINE=$(echo $OUT | grep "now logged on" )

    if [ "$ONLINE" ]
     then
       echo "Successful connection made to BTWi-fi."
       logger -t "logon_hotspot" "Successful connection to hotspot."
     else
       echo "Error making a connection."
       logger -t "logon_hotspot" "Error making a connection."
     fi
fi

# End Script
