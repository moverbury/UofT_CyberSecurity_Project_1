#!/bin/bash

echo "Survey Says!:"

cat $1_Dealer_schedule | grep $2 | grep $3 |

if [ Roulette ] 
	then
	echo Roulette Dealer
	awk -F" " '{print $1, $2, $5, $6}'

elif [ Blackjack ]
	then
	echo Blackjack Dealer
	awk -F" " '{print $1, $2, $3, $4}'

elif [ Texas ]
	then
	echo Texas Holdem Dealer
	awk -F" " '{print $1, $2, $7, $8}'

fi

date

# Format for query: moday hr PM <dealer type> . for example 'bash Bonus_test.sb 0312 08 PM Texas'
# Input date, hour and AM or PM, then Dealer Type. If Blackjack, display time plus name from column 3,4
# If Roulette, display time plus name from column 5,6
# If Texas Hold EM (Texas) display time plus column 7,8
# Can't get this to work! Arrgh. What am I doing wrong?
