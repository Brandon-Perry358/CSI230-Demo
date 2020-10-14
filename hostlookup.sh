#!/bin/bash

#file hostlookup.sh
#finds the ip of hosts that are provided to it
#author Brandon Perry
#Lab 6.2 Iteration
#date 10/13/2020

if ! [ -f $1 ]; then
   echo "Couldn't find a file to open"
   exit 1
fi

for h in $(cat $1)
do
   out=$(host -W1 -t A $h)
   if [ $? -eq 0 ]; then
      ip=$(echo $out | cut -d " " -f 4)
      echo ${h},$ip
   else
      echo "${h},not found"
   fi
done
