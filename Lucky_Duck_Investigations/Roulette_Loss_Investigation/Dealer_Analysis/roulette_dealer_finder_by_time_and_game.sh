#! /bin/bash
if [[ -z "$1" && -z "$2" && -z "$3" ]]
then
	echo "Please input Date as DD:MM ,Time as 'hh:mm:ss AM/PM', Game as Game1/Game2/Game3"

fi

i=$3

if [[ "$i" == "Game1" ]]
then
	echo "On $1 $(grep "$2" $1* | awk '{print $1,$2,$3,$4}') is the Black Jack Dealer"
elif [[ "$i" == "Game2" ]]
then
	echo "On $1 $(grep "$2" $1* | awk '{print $1,$2,$5,$6}') is the Roulette Dealer"
elif [[ "$i" == "Game3" ]]
then
	echo "On $1 $(grep "$2" $1* | awk '{print $1,$2,$7,$8}') is the Texas Hold'Em Dealer"
fi
