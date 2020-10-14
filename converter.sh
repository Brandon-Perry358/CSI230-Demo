#!/bin/bash

#file converter.sh
#converts a text file into all upper or lower case letters
#author Brandon Perry
#Lab 6.2 Iteration
#date 10/13/2020

usage()
{
   echo "$0 usage: [-f input filed] [-c U(pper) or L(ower)]"
   exit 1
}

while getopts ":f:c:" options;
do
   case "${options}" in
      f)
        f=${OPTARG}
        if ![ -f $f ]; then
         usage
        fi
        ;;
      c)
        c=${OPTARG}
        if [[ ${c} == "U" || ${c} == "L" ]]; then
           echo "${f} - ${c}"
        else
           usage
        fi
        ;;
      *)
        usage
        ;;
   esac
done

if [-z "$f" ] || [ -z "$c" ]; then
   usage
fi

while read line
do
   if [ ${c} == "U" ]; then
      echo $line | tr [:lower:] [:upper:]
   else
      echo $line | tr [:upper:] [:lower:]
   fi
done < $f

exit 0
