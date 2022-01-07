all: README.md


README.md:

	echo "The Date and Time is :"  date >> README.md

	echo "The Number of Lines in the script guessinggame.sh is : " wc guessinggame.sh >> README.md


