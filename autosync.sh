#!/bin/bahs

old=$(git log master -n 1 --pretty="%H")

while true;
do
	new=$(git log master -n 1 --pretty="%H")
	if [ $old == $new ]; then
		git push orig mster:master
	fi
	sleep 10
done
