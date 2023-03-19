#!/bin/bash
while true
do
	echo "Menu:"
	echo "1. Start"
	echo "2. Restart"
	echo "3. Stop"
	echo "0. Exit"
	read action
	case $action in
		0)
		exit
		;;
		1)
		echo "Starting..."
		./timer.sh &
		PID=$!
		echo "Started"
		;;
		2)
		echo "Restarting..."
		kill $PID
		./timer.sh &
		PID=$!
		echo "Restarted"
		;;
		3)
		kill $PID
		echo "Stoped"
		;;
		*) echo "Invalid input"
		esac
done
