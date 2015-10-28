#!/bin/bash

###edit the following
service=mysql 
email=(your_email)
###stop editing

host=`hostname -f`
if (( $(ps -ef | grep -v grep | grep $service | wc -l) > 0 ))
then
echo "$service is running"
else
/etc/init.d/$service start
if (( $(ps -ef | grep -v grep | grep $service | wc -l) > 0 ))
twidge update "mysql stop working trying to restart"
then
subject="$service at $host has been started"
echo "$service at $host wasn't running and has been started" | mail -s "$subject" $email
else
subject="$service at $host is not running"
echo "$service at $host is stopped and cannot be started!!!" | mail -s "$subject" $email
twidge update "mysql will not restart informing the army of highly trained tech Monkey's to fix it."
fi
fi

##credit's##
# edited by Lazy_Coder a.k Andrew M @ https://twitter.com/British_Pirate or https://github.com/Darksleep 
# original service restart script by akamaras @ http://www.akamaras.com
# Twidge by jgoerzen @ https://github.com/jgoerzen/twidge
##end##
