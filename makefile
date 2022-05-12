all: README.md

README.md:
	echo '# Project title: Guessing game' > README.md
	printf '\n\n' >> README.md
	echo 'Current date and time: ' `date` >> README.md
	printf '\n\n' >> README.md
	echo 'Number of lines of code in guessinggame.sh: ' `wc -l guessinggame.sh | egrep -o "[0-9]+"` >> README.md

clean:
	rm README.md

