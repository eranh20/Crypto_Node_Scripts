#!/bin/bash

# Location of Script: /etc/init.d/
# Add to Ubuntu startup (boot): sudo crontab -e ---> @reboot /etc/init.d/Script_Name.sh

# Update the BOT{ID}:{Token}
# Update script_name


sleep 10m 

while true
do 

    while [ 1 ]
    do
        PID=$(/bin/ps ax |/bin/grep script_name.sh |/bin/awk '{print $1}')
        [ -n "$PID" ] && sleep 10m || break
    done

    curl -s "https://api.telegram.org/BOT{ID}:{Token}/sendMessage?chat_id={}&text={We Have a Problem}"
    curl -s "https://api.telegram.org/BOT{ID}:{Token}/sendMessage?chat_id={}&text={The 'node_stat_check_script' Is NOT WORKING!!!}"
    curl -s "https://api.telegram.org/BOT{ID}:{Token}/sendMessage?chat_id={}&text={WAKE UP MANNNN}"
    sleep 8h
done
