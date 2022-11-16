#!/bin/bash

# Location of Script: /etc/init.d/
# Add to Ubuntu startup : sudo crontab -e ---> @reboot /etc/init.d/Script_Name.sh

# Enter BOT{ID}:{Token}.
# Enter chat_id={-Number}.
# Enter the node_file NAME & fix the command line as needed(grep/cut/sed etc'. 



sleep 5m # wait for the process to start


counter=0


while true
do

       
        node_stat=$(node_file status | grep MN | cut -d " " -f 3 | sed 's/,//')
        

        if [[ $node_stat != "active" ]]
        then
        	if [ $counter -lt "3" ]
        	then
        		  counter=$(( counter+1 ))
        		  date=$(date)
              uptime=$(uptime)
              curl -s "https://api.telegram.org/BOT{ID}:{Token}/sendMessage?chat_id={}&text=$node_stat"
              curl -s "https://api.telegram.org/BOT{ID}:{Token}/sendMessage?chat_id={}&text=$date"
			        curl -s "https://api.telegram.org/BOT{ID}:{Token}/sendMessage?chat_id={}&text=$uptime"
			        sleep 2m
		      else
			        counter=$(( counter+1 ))
			        sleep 3m
			
			        if [[ $counter -eq 57 ]]
			        then
				            counter=0

			        fi
			
		
		      fi
        
        else
		        if [[ $counter != 0 ]]
		        then
			
			            curl -s "https://api.telegram.org/BOT{ID}:{Token}/sendMessage?chat_id={}&text=$node_stat"
               		curl -s "https://api.telegram.org/BOT{ID}:{Token}/sendMessage?chat_id={}&text=$date"
			            curl -s "https://api.telegram.org/BOT{ID}:{Token}/sendMessage?chat_id={}&text=$uptime"
			            counter=0

		        fi
		        counter=0
		        sleep 1m
	      fi
done

