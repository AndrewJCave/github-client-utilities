#!/usr/bin/env bash

#create some folders and files

for i in {'alpha','bravo','charlie'}
do
   mkdir -p $i
   touch $i/a1.txt
   touch $i/a2.txt
   touch $i/a3.txt
done 

echo -e "Finished creating folders and files"