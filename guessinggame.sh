#!/usr/bin/env bash
# File: guessinggame.sh
# A simple guessing game that asks the user to guess
# the number of files in the current directory.

# -----------------------------
# Function to count files
# -----------------------------
function file_count {
  local count=$(ls -1 | wc -l)
  echo $count
}

# -----------------------------
# Main Program
# -----------------------------
echo "Welcome to the Guessing Game!"
echo "How many files are in the current directory?"

# Get the actual count of files
actual_count=$(file_count)
guess=-1

# Loop until the guess is correct
while [[ $guess -ne $actual_count ]]
do
  read -p "Enter your guess: " guess

  if [[ $guess -lt $actual_count ]]
  then
    echo "Your guess is too low. Try again!"
  elif [[ $guess -gt $actual_count ]]
  then
    echo "Your guess is too high. Try again!"
  else
    echo "🎉 Congratulations! You guessed correctly."
  fi
done
