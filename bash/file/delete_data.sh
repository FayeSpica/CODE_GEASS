#!/bin/bash
#Delete any file in $1 which count > $2
count=0
for name in `find $1 -type f`
do
count=$(($count + 1))
if [ $count -gt $2 ]
then
        `rm $name`
fi
done
