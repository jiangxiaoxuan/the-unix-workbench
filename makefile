#/usr/bin/env bash

all: README.md

README.md: guessinggame.sh
	touch README.md
	echo "# guessinggame" > README.md
	date >> README.md
	echo "  \n" >> README.md
	echo "Guessing Game with number of lines:" >> readme.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
clean:
	rm README.md
