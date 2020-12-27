#!/bin/bash
echo "Survey says!:"
cat $1_Dealer_schedule | awk -F" " '{print $1,$2,$5,$6}'| grep $2 | grep $3
# Input file date and time in the following format 0310 07 AM for any date/time combination. Always specify wx AM or PM, especially for 12!
date
