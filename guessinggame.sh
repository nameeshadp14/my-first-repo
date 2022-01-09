#!/bin/bash

function user_input {

echo "Please guess the number of files in the current directory"
read number
 
}

user_input

actual_number=$(ls -la | wc -l)

while [[ $number -ne $actual_number ]]

do

  echo "Your guess is wrong"
  
  for (( i=$actual_number-2;i<=$actual_number+2;i++ )) 
  do
 
  if [[ $number -eq i ]]
  then
  
  echo "Your guess is near..!" 
  break
 
  elif [[ $number -gt i && $number -le $actual_number+2 ]]
  then

  continue

  else  

  echo "Your guess is far..!"

  break 

  fi
  done

  user_input

done
echo "Congratulations...! , You're right the number of files are $number"


