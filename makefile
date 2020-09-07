README.md:
	echo "# CURSERA PROJECT" > README.md
	echo "DATE:  " >> README.md
	date >> README.md
	echo " " >> README.md
	echo "Number of lines of code contained in guessinggame.sh :   " >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
