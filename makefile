all: README.md

README.md: guessinggame.sh
	echo "## Project title: Guessing Game" > README.md
	echo -n "\n**The date and time**: " >> README.md
	date >> README.md
	echo -n "\n**The number of lines of code contained in guessinggame.sh: **" >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
	
clean:
	rm README.md 
