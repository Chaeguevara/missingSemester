#!/bin/bash
#calculate the number of days between two dates

date1=$(date -v20y -v1m -v1d -v0H -v0M -v0S +%s)
date2=$(date -v20y -v5m -v1d -v0H -v0M -v0S +%s)

diff=$(expr $date2 - $date1)
secondsinday=$(expr 24 \* 60 \* 60)
days=$(expr $diff / $secondsinday)
echo "The difference between $date2 and $date1 is $days days" 
