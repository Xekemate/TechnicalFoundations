#! /bin/sh
now=$(date)
printf "$now\n" 
printf "Enter the name of the dir":
read filename
mkdir -p $filename
tar czf $(date +%Y%m%d-%H%M%S).tar.gz $filename
if file $(date +%Y%m%d-%H%M%S).tar.gz | grep -q compressed; then
printf "File is compressed\n"
fi
ls -l
