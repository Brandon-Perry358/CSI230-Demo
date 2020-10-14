#!/bin/bash

#file color.sh
#Prompts user for favorite color and displays it using case
#author Brandon Perry
#Lab 6.1 Case
#date 10/13/2020

red='\033[0;31m'
green='\033[0;32m'
yellow='\033[0;33m'
blue='\033[0;34m'
magenta='\033[0;35m'
default='\033[0m'

read -p "What is your favorite color (red, green, blue, yellow, or magenta?): " color
color=${color^^}

echo "${color} selected"

case ${color} in

   RED)
        selected_color=$red
	;;

   GREEN)
        selected_color=$green
        ;;

   YELLOW)
        selected_color=$yellow
        ;;

   BLUE)
        selected_color=$blue
        ;;

   MAGENTA)
        selected_color=$magenta
        ;;

   PURPLE)
	selected_color=$default
	echo "Purple wasn't on the list"
	exit 1
	;;

   *)
	selected_color=$default
	echo "You didn't enter anything from the list!"
	exit 2
	;;
esac

echo -e "${selected_color}Your selected color is ${color}${default}"

