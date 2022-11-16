# Crypto Node Scripts


So, I was needed some simple scripts that will check if my Crypto Node is running in my VPS and if not send me alert in Telegram.
I had to create TG BOT with BotFather ( https://t.me/BotFather ) first.

Remember to update the BOT_ID & BOT_TOKEN in the scripts, also update the Crypto Node File Name and Location.


I'm running 2 Scripts:

## 1. Status_Check.sh  
   Will check the status of the Node and if it other then 'active', it will send me meassages every 2 minutes for 3 times.
   After that it will sleep for 3 hours and will start over again. If in this 3 hours the status will change to 'active' it will send me TG message
   and return to the start of the script.


## 2. Check_script_is_running.sh  
   Will check that the first script is running & message me if it's not.

------------------------


Last thing - update crontab so the scripts will run on reboot.

probably there are "pretty" ways to write that, but this is what I managed to come with the time I had.


Feel Free To Use/Modify and so on...
