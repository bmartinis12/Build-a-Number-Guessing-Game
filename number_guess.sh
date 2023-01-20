#!/bin/bash
PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

# generate random number bewteen 1-1000
NUMBER=$(( RANDOM % 1000 + 1 ))

# get user to inset username
echo "Enter your username:"
read USERNAME

SEARCH_USERNAME=$($PSQL "SELECT username FROM game WHERE username = '$USERNAME'")
# check if the username has been used before 
if [[ -z $SEARCH_USERNAME ]]
then
  # if it hasn't response 
  echo "Welcome, $USERNAME! It looks like this is your first time here."
  INSERT=$($PSQL "INSERT INTO game(username) VALUES('$USERNAME')")
  # if it has response 
else 
  GAMES_PLAYED=$($PSQL "SELECT games_played FROM game WHERE username = '$USERNAME'")
  BEST_GAME=$($PSQL "SELECT best_game FROM game WHERE username = '$USERNAME'")
  echo "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
fi

# start game 
echo "Guess the secret number between 1 and 1000:"
# get user input
read GUESS

CONTINUE_GAME='TRUE'
TRIES=1
# while user has not guessed NUMBER
while true; do
  # if user input is a #
  if [[ $GUESS =~ ^[0-9]+$ ]]
  then
    # if user input is higher than NUMBER
    if [[ $GUESS > $NUMBER ]]
    then 
      echo "It's lower than that, guess again:"
      read GUESS
      TRIES=$(( $TRIES + 1))
    # if user input is less than NUMBER 
    elif [[ $GUESS < $NUMBER ]]
    then 
      echo "It's higher than that, guess again:"
      read GUESS
      TRIES=$(( $TRIES + 1 ))
    # if user guesses number 
    elif [[ $GUESS == $NUMBER ]]
    then
      echo "You guessed it in $TRIES tries. The secret number was $NUMBER. Nice job!"
      break
    fi
  # else (if not a number)
  else
    echo "That is not an integer, guess again:"
    read GUESS 
  fi
done

GAMES_PLAYED=$($PSQL "SELECT games_played FROM game WHERE username='$USERNAME'")
BEST_GAME=$($PSQL "SELECT best_game FROM game WHERE username='$USERNAME'")

if [[ -z $BEST_GAME ]]
then
INSERT=$($PSQL "UPDATE game SET best_game = $TRIES WHERE username='$USERNAME'")
elif [[ $BEST_GAME > $TRIES ]]
then 
  UPDATE=$($PSQL "UPDATE game SET best_game = $TRIES WHERE username='$USERNAME'")
fi

      # Update games played
if [[ -z $GAMES_PLAYED ]]
then
  GAMES_INSERT=$($PSQL "UPDATE game SET games_played = 1 WHERE username='$USERNAME'")
else 
  $GAMES_PLAYED=$(( $GAMES_PLAYED+1 ))
  GAMES_UPDATE=$($PSQL "UPDATE game SET games_played = $GAMES_PLAYED WHERE username='$USERNAME'")
fi

