#!/bin/bash

#***********************************************
# Name: Angela
# Date: 8/20/2022
# Script: autopush.sh
# Description: This script will push the current memory and cpu usage file
# to a GitHub repo every minute
#	*** run the file in the background with ./autopush.sh & ***
#***********************************************

var=0
# send memory & cpu usage to file
while [ var=0 ]
do
	date >> cpuandmem.txt
	free >> cpuandmem.txt
	cat /proc/cpuinfo >> cpuandmem.txt
	git add .
	git commit -m "updating file"
	git push --set-upstream origin number2
	sleep 60
done
 
