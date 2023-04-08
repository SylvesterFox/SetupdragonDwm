#!/bin/bash

killall conky
sleep 2s
		
conky -c $HOME/.conky/Zavijava/Zavijava.conf &> /dev/null &

exit
