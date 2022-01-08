all: README.md


README.md:

	echo " # Guessing Game " > README.md

	echo "The Date and Time when make was run :"   >> README.md
	date >> README.md

	echo "The Number of Lines in the script guessinggame.sh is : " >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md

clean:
	rm README.md


