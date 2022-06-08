#! /bin/bash
##### " This script is executed in /Lucky_Duck_Investigations/Roulette_Loss_Investigation/Dealer_Analysis ###
#### This script finds the Roulette Dealer on March 15 during a specific Time ######
#### This script is used to run and the output is captured in the Notes file ####

if [[ -z "$1" ]]
then
	echo "Please input time in the format hh:mm:ss AM/PM"
else
	echo "March 15 $(grep "$1 $2" 0310* | awk '{print $1,$2,$5,$6}')"
fi
