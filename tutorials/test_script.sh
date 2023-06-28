#!/bin/bash

# Variable
# variableName=value
# To access any variable=> $variableName
# name=Ankit
# age=23
# echo My name is $name and my age is $age.
#----------------------------------------------------------------------------------------------

# How to run and store output of a command in a variable
# variableName=$(command)
# host=$(hostname)
# echo My hostname is $host

# ls=$(ls)
# echo $ls
#----------------------------------------------------------------------------------------------

# How to take input from user
# read var_name_to_store_value
# echo What is your name?
# read name
# echo Hello $name

# read -p "What is your name? " name
# echo hello $name
# https://linuxhint.com/bash_read_command/
#----------------------------------------------------------------------------------------------

# How to add new line
# echo Ankit
# echo ""
# echo Pathak
#----------------------------------------------------------------------------------------------

# Type of operator
# == -> -eq/==
# >= -> -ge
# <= -> -le
# > -> -gt
# < -> -lt
#----------------------------------------------------------------------------------------------

# If-else condition
# read -p "Enter your age? " age
# if [ $age -ge 18 ]; then
#     echo "You can vote"
#     echo your age is $age
# elif [ $age -eq 10 ]; then
#     echo your age is $age
# else
#     echo "You cannot vote"
# fi
#----------------------------------------------------------------------------------------------

# Switch case

# echo hey choose an option
# echo 1=To see the current date
# echo 2=List all the files in current directory
# echo 3=Show current path

# read choice

# case $choice in
#     1) date;;
#     2) ls -ltr;;
#     3) pwd;; 
#     *) echo Invalid input
# esac

# In script file you can direct write commands and terminal will run it one by one
#----------------------------------------------------------------------------------------------

# For loop
# for variable in List
# do 
#     Task
# done

# for i in 1 2 3 4 5
# do
#     echo $i
# done

# {1..10}=>[1,2,3,4,5,6,7,8,9,10]
# for i in {1..10}
# do
#     echo $i
# done
#----------------------------------------------------------------------------------------------

# In the script, ((num=num+1)) increments the value of the num variable by 1.
## syntax: ((expression))

# num=22
# echo $num
# ((num=num+1))
# echo $num

# while loop
# count=0
# num=10
# while [ $count -le $num ]
# do
#     echo Number is $count
#     ((count=count+1))
# done
#----------------------------------------------------------------------------------------------

# Iterate values from file
# path="/e/shell_scripting/tutorials/name"
# for item in $(cat $path)
# do
#     echo $item
# done
#----------------------------------------------------------------------------------------------

