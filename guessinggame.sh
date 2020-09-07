#!/usr/bin/env bash

function guess { 
number_files=$(ls | wc -l)

while true
do
	echo "Guess the number of files in the current directory"
	read respuesta
	numero_total=respuesta-number_files
	if [[ numero_total -eq 0 ]]
	then
		echo "CONGRATULATIONS,WELL DONE! YOU GUESS THE EXACT NUMBER OF FILES THAT ARE IN THIS DIRECTORY!"
		break
    	elif [[ respuesta -lt 0 ]]
	then
		echo "That's not a possible solution, try again"
	elif [[ numero_total -ge 10 ]]
	then
		echo "Your guess is too high, keep trying"
	elif [[ numero_total -le -10 ]]
	then
		echo "Your guess is too low, keep trying"
	fi
done

}

guess
