#!/bin/dash

killall -q scream
trap "exit" INT TERM
trap "kill 0" EXIT

theloop()
{
killall -q scream
scream -i virbr0 &
}


while true
do
	theloop
	sleep 300
	killall -q scream
done
