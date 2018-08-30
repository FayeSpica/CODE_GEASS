#!/bin/bash
# kill all non-bash process in docker with signal 9
# Note: you only can use this in docker,never in real machine
pgrep -v bash | while read line
do
        kill -s 9 $line
done
