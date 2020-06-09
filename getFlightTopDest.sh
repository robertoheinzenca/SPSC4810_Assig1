#! /usr/bin/env bash 


awk -F',' 'NR==2, NR=0 {print $18,1}' 2007.csv | awk '{a[$1]+=$2;}END{for(i in a)print i", " a[i];}' | sort -n -r -t ',' -k2 | head -3 > top3destTmp.csv
sed '1i\Destination,#Arrivals' top3destTmp.csv > top3dest.csv
csvlook top3dest.csv

 

 
