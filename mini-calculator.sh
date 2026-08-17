#!/bin/bash

read -p "Enter the first no.: " x
read -p "Enter the second no.: " y

        addition () {
                let add=$x+$y
                echo "The addition of $x and $y is $add"
        }

        substraction () {
                let sub=$x-$y
                echo "The substraction of $x and $y is $sub"
        }

        multiple () {
                let mul=$x*$y
                echo "The multiplication of $x and $y is $mul"
        }

        division () {
                if [[ $y -eq 0 ]];
                then
                        echo "Division by 0 is not possible please enter some other no."
        #I use let and bc command together that's why it threw error
        #let div=$(echo "scale=2;$x/$y" | bc)
                else
                        echo "The division of $x and $y is $(echo "scale=2;$x/$y" | bc)"
                fi
        }

all () {
        addition
        substraction
        multiple
        division
}

echo "Enter a to add"
echo "Enter b to substract"
echo "Enter c to multiple"
echo "Enter d to divide"
echo "Enter e to all the process"

read choice

case $choice in
        a)addition;;
        b)substraction;;
        c)multiple;;
        d)division;;
        e)all;;
        *)echo "Please provide a valid value"
        ;;
esac
