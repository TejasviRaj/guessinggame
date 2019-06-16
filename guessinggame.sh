#!/usr/bin/env bash

function guess(){
    true_ans=$(ls -l |grep "^-"|wc -l)
    while true;
    do
        echo "please enter your guess"
        read  number
        if [ $number -lt $true_ans ]
        then
            echo "guess too low, try again"
        elif [ $number -gt $true_ans ]
        then
            echo "guess too high, try again"
        else
            echo " congratulation, you are right!"
        break;
        fi
    done
}
echo "guess the files number in the current directory!"
guess
