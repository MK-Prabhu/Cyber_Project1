#! /bin/bash
if [[ -z "$1" && -z "$2" ]]
then
	echo "Please input time in the format 'hh:mm:ss AM/PM' and Date in the format mmdd"
else
	echo "On $2 $(grep "$1" $2* | awk '{print $1,$2,$5,$6}') is the Roulette Dealer"
fi

