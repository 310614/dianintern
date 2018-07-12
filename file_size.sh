#!/bin/bash
if [[ -n $3 && -n $4 ]];then
   echo "The largest files/directions in $4 are:"   
   du -ah $4 | sort -n -r |head -n $2
elif [[ -z $4 && -n $3 ]];then
   echo "usage: 4.file_size.sh [-n N] [-d DIR]"
   echo "Show top N largest files/directories"
elif [[ -z $3 && -z $4 ]];then
   du -ah |sort -n -r |head -n $2
fi

