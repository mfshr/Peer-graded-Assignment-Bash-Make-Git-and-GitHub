#!/usr/bin/env bash
function congrats {
	echo "Congratulations! You have guessed the correct answer."
}
control=0

while [[ $control -eq 0 ]]

do
	echo "What is the number of files in current directory:"

	read response

	echo "You entered : $response"

	numfiles=(*)

	numfiles=${#numfiles[@]}

	echo "the number of files is: $numfiles"

	if [[ response -eq numfiles ]]

	then
		congrats

		control=1
		
	elif [[ response -gt numfiles ]]

	then

		echo "Your guessed number is too high"
	else

		echo "Your guessed number is too low"
	fi

done

}
echo "guess the files number in the current directory!"
guess
