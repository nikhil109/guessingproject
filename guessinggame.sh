#!/bin/bash
total_files=` ls -1A| wc -l`
returned_val=0

guess_seq () {
        while true
        do
                read guess
                echo 'guessed no.of files - ' $guess
                if [ $guess -eq $total_files ]
                then
                        echo 'Congratulations, You guessed it right!'
                        break
                elif [ $guess -le $total_files ]
                then
                        echo 'you have guessed too low'
                else
                        echo 'you have guessed too high'
                fi
                echo 'Guess Again!'
        done
}

echo "guess the files number in the current directory!"
guess_seq
