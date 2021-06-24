#!/bin/bash
#my terrible ping sweeper tool
for i in {0..255}
do
(ping -c 1 -w 5 10.11.1.$i | awk -F " " 'BEGIN { ORS=" " }; FNR==1{print $2};FNR==5{printf "%s\n",$4}' >> /tmp/pingsweeper &)
done
sleep 1 #idk why this wait has to be here, but the script wont scan all ports without it
wait 
cat /tmp/pingsweeper | awk -F " " '{if ($2==1){print $1}}' | sort -t . -k 4,4n
rm /tmp/pingsweeper
 
