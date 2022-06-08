#! /bin/bash
####### This script execution path is "/Lucky_Duck_Investigations/Roulette_Loss_Investigation/Player_Analysis" ########
### This script process the files given to investigation to isolate losses and then finds the player during the losses ###
##### This file uses Player_Losses which is the list of all players during the losses, so the file should be present ###

############# Build Loss Data ###########################

grep - 031* | sed 's/0310_win_loss_player_data:/March 10 /' | sed 's/0312_win_loss_player_data:/March 12 /' | sed  's/0315_win_loss_player_data:/March 15 /' | sed 's/-$[0-9][0-9],//' | sed 's/-$[0-9][0-9][0-9],//' | sed 's/[0-9][0-9][0-9]//' > Roulette_Losses

#########################################################

#awk '{print $5}' Roulette_Losses > Players_Losses
count=1
for i in $(cat Players_Losses);
do 
	echo;
	g=$(grep $i Players_Losses | wc -l);
	echo "Players Name:  $i";
	echo "Total Appearances: $g"
	if [[ $g -gt 1 ]]
	then
		#echo "The player with maximum appearance on the losses is $i and the total appearance is $g";
		if [[ $count -lt $g ]]
		then
			 j=$i;
                         count=$g;
		 fi

	#else
	#	echo "Else The player with maximum appearance on the losses is $i and the total appearance is $g";
	fi

done
echo;echo "Results are Saved to Notes_Player_Analysis"
echo "################ Players During the Loss Occurances #######################" > Notes_Player_Analysis
cat Roulette_Losses >> Notes_Player_Analysis
echo >> Notes_Player_Analysis
echo ""$j" is the player who was playing during all the loss occurances" >> Notes_Player_Analysis
echo  >> Notes_Player_Analysis
echo "The total count of times $j was playing is $count" >> Notes_Player_Analysis
echo "#################### Notes_Player_Analysis  ##########################"
echo;cat Notes_Player_Analysis
