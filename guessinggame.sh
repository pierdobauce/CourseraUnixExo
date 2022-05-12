#!/usr/bin/env bash

let correctAnswer=`ls | wc -l`
let found=0

function getInput()
{
  local validInput=0
  while [[ validInput -eq 0 ]]
  do
    read -p 'How many files are in the current directory: ' guess
    if [[ $guess =~(^[+,-]{0,1}[0-9]+) ]]
    then
      let validInput=1
    else
      echo 'Please enter a number.'
   fi
  done
}

while [[ $found -ne 1 ]]
do
  getInput
  if [[ guess -lt $correctAnswer ]]
  then
    echo 'You are lower than the correct answer. Please retry.'
  elif [[ guess -gt $correctAnswer ]]
  then 
    echo 'You are higher than the correct answer. Please retry.'
   else
    echo 'You guess right!'
    let found=1
  fi
done
