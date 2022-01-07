#!/bin/usr/bash

echo "PLease guess the number of files in the current directory"
read number

actual_number=$(ls -l | wc -l)

echo "actual number is $actual_number"


while [[ $number -ne $actual_number ]]

do

  echo "Your guess is wrong"

   start= expr  $actual_number - 2
   end= expr $actual_number + 2
  
  for (( i=$actual_number-2;i<=$actual_number+2;i++ )) 
  do

 
  if [[ $number -eq i ]]
  then
  
  echo "Your guess is near..!" 
  break
 
  elif [[ $number -gt i && $number -le $actual_number+2 ]]
  then
echo "Inside elif"
  continue

  else  

  echo "Your guess is far..!"

  break 

  fi

  done

 

  echo "Please guess it again..!"
  read number

done
echo "Congratulations...! , You're right the number of files are $number"


