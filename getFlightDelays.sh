#! /usr/bin/env bash 


awk -F',' -v orig="$1" '{if ($17==orig || NR==1) print $17,$18,$15}' 2007.csv | head -n4 > first3sfo.csv  #-- getting the data, including header 
csvlook first3sfo.csv

 

 
