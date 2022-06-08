#! /bin/bash
############### This script execution path is "/Lucky_Duck_Investigations/Roulette_Loss_Investigation/Player_Dealer_Correlation" ######
###  This script is the final analysis to find correlation between player and dealer 


echo > Notes_Player_Dealer_Correlation
cat ../Player_Analysis/Notes_Player_Analysis >> Notes_Player_Dealer_Correlation
cat ../Dealer_Analysis/Notes_Dealer_Analysis >> Notes_Player_Dealer_Correlation
i=$(sed -n '16p'  ../Player_Analysis/Notes_Player_Analysis | awk '{print $1}' | sed 's/,/ /')
j=$(sed -n '18p' ../Dealer_Analysis/Notes_Dealer_Analysis  | awk '{print $1,$2}')
echo >> Notes_Player_Dealer_Correlation
echo "##################### Summary of the Investigation ###################" >> Notes_Player_Dealer_Correlation
echo >> Notes_Player_Dealer_Correlation
echo "All the above evidences sggest that the losses for Lucky Duck is because the dealer $j is colluding with the player $i " >> Notes_Player_Dealer_Correlation
echo "######################################################################" >> Notes_Player_Dealer_Correlation
