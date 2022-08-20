#!/bin/bash

#***********************************************
# Name: Angela
# Date: 8/20/2022
# Script: autopush.sh
# Description: This script will push the current memory and cpu usage file
# to a GitHub repo every minute
#***********************************************

var=0
# send memory usage to file
while [ var=0 ]
do
	date >> cpuandmem.txt
	free >> cpuandmem.txt
	cat /proc/cpuinfo >> cpuandmem.txt
	git add .
	git commit -m "updating file"
	sleep 60
done
 
