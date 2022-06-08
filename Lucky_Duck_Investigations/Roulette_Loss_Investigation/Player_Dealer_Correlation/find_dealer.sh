#! /bin/bash
i=$(sed -n '1p' Dealers_working_during_losses | awk '{print $5,$6}')
j=$(grep "$i" Dealers_working_during_losses | wc -l)
echo > Notes_Dealer_Analysis
echo "################ Dealers During the the loss occurances ####################" >> Notes_Dealer_Analysis
echo >> Notes_Dealer_Analysis
cat Dealers_working_during_losses >> Notes_Dealer_Analysis
echo >> Notes_Dealer_Analysis
echo "$i is the primary dealer working at all times when the losses occurred. "  >> Notes_Dealer_Analysis
echo >> Notes_Dealer_Analysis
echo "$j Times Billy Jones is the dealer during the loss occurances." >> Notes_Dealer_Analysis
