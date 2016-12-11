#!/bin/bash

# Compile and execute greenLight.c 
gcc -Wall -o greenLight greenLight.c -lwiringPi
sudo ./greenLight

# Vars
datamtx=''

# Current Working directory to var
cwd=$(pwd)

# tmp data-matrix holder
tmp="$cwd/zbartmp"

# Formatting date 
DATE=$(date +"%y_%b_%d_%T")

# Name of scan results file
ScanResult="$cwd/scan_$DATE.txt"

function scan() {
  zbarcam --raw --prescale=320x240 /dev/video0 > $tmp &

  # Last job running in background eg. zbarcam
  pid=$!

  # Sleep loop until $tmp file has content
  while [[ ! -s $tmp ]]
    do
      sleep 1
      # cleanup - add a trap that will remove $tmp and kill zbarcam
      # if any of the signals - SIGHUP SIGINT SIGTERM it received.
      trap "rm -f $tmp; kill -s 9 $pid; exit" SIGHUP SIGINT SIGTERM
  done

  # Kill tasks, free up space and call test.py to blink L.E.D.
  kill -s 9 $pid
  python test.py
  datamtx=$(cat $tmp)
  rm -f $tmp

  # Append scan results to file
  echo $datamtx >> $ScanResult
  LastScanned=`cat $ScanResult | tail -n 1`
  lineCount=`wc -l $ScanResult`

  # Show scan results
  clear
  echo -e "\nYou've scanned:" $LastScanned 


# Prompt to continue scanning
while :
do
  read -p "Do you want to continue scanning? (Yes/No): " Selection
 
  if [ "$Selection" == "y" ]||[  "$Selection" == "Y" ]||[  "$Selection" == "yes" ]||[  "$Selection" == "Yes" ];
       then scan
  elif [ "$Selection" == "n" ]||[  "$Selection" == "N" ]||[  "$Selection" == "no" ]||[  "$Selection" == "No" ];
       then
       echo -e "\nYou've scanned the following: "
       cat $ScanResult 
       exit
  else echo -e "\nIncorrect selection! Please choose yes or no"
  fi  
done
  
  exit
}

# Call the scan function
scan
