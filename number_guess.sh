#!/bin/bash

PSQL="psql -X --username=freecodecamp --dbname=number_guess --tuples-only -c"

echo "Enter your username:" 
read USERNAME


SELECT_NAME=$($PSQL "SELECT name from users WHERE name = '$USERNAME'")
GAMES=$($PSQL "SELECT COUNT(*) from users INNER JOIN games USING (user_id) WHERE name = '$USERNAME'")
BEST_GAME=$($PSQL "SELECT MIN(tries) FROM users INNER JOIN games USING (user_id) WHERE name = '$USERNAME'")

if [[ -z $SELECT_NAME ]]
 then  
  INSERT_NAME=$($PSQL "INSERT INTO users(name) VALUES('$USERNAME')")
  echo "Welcome, $(echo $USERNAME| sed 's/ *//g')! It looks like this is your first time here."
 else 
  echo "Welcome back, $(echo $USERNAME| sed 's/ *//g')! You have played $(echo $GAMES| sed 's/ *//g') games, and your best game took $(echo $BEST_GAME| sed 's/ *//g') guesses."
fi

SECRET=$((1 + $RANDOM % 1000))
echo -n "Guess the secret number between 1 and 1000:"
TRIES=1

while read GUESS
do 
  if [[ ! $GUESS =~ ^[0-9]+$ ]]
  then
    echo "That is not an integer, guess again:"
  else
    if [[ $GUESS -eq $SECRET ]]
    then
      echo -n "You guessed it in $(echo $TRIES| sed 's/ *//g') tries. The secret number was $(echo $SECRET| sed 's/ *//g'). Nice job!"
      break;    
    else
      if [[ $GUESS -gt $SECRET ]]
      then
        echo "It's lower than that, guess again:"
      else
        if [[ $GUESS -lt $SECRET ]]
        then
          echo "It's higher than that, guess again:"
        fi  
      fi
    fi
  fi
  TRIES=$(( $TRIES + 1 ))
done

USER_ID=$($PSQL "SELECT user_id FROM users WHERE name = '$USERNAME'")
INSERT_VALUES=$($PSQL "INSERT INTO games(tries, user_id) VALUES('$TRIES', '$USER_ID')")
