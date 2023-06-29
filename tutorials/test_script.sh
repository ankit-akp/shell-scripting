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

# AWK is a powerful text-processing tool that can be used in shell scripts to manipulate and process structured data. Here's an example of how you can use AWK in a shell script:

# ```bash
# #!/bin/bash

# # Create a sample input file
# echo "John 25" > data.txt
# echo "Alice 30" >> data.txt

# # Use AWK to process the data file
# awk '{ print "Name: " $1 ", Age: " $2 }' data.txt
# ```

# In this example, the script creates a sample input file called `data.txt` with two lines of data representing names and ages. Then, AWK is used to process the data file. The AWK command `{ print "Name: " $1 ", Age: " $2 }` specifies the action to be performed on each line. It prints the name and age by concatenating the values of the first and second fields (columns), respectively.

# When you run this script, it will output:

# ```
# Name: John, Age: 25
# Name: Alice, Age: 30
# ```

# You can modify the AWK command within the script to perform various operations like filtering data, performing calculations, or formatting output based on your specific requirements.
#----------------------------------------------------------------------------------------------

# Array
# Declare an array
# fruits=("Apple" "Banana" "Orange" "Mango")

# # Accessing array elements
# echo "First fruit: ${fruits[0]}"
# echo "Second fruit: ${fruits[1]}"

# # Modifying array element
# fruits[2]="Grapes"

# # Looping through array elements
# echo "All fruits:"
# for fruit in "${fruits[@]}"; do
#     echo "$fruit"
# done

# # Getting the length of the array
# echo "Number of fruits: ${#fruits[@]}"
#----------------------------------------------------------------------------------------------

# Get the name of the script
# basename is used to print name with any leading directory components removed
# echo The name of the script is $(basename $0)
#----------------------------------------------------------------------------------------------

# ${} in shell script
# In shell scripting, the `${}` notation is used for variable expansion or substitution. It allows you to retrieve the value of a variable or perform various operations on it within a string or command. Here are a few common use cases of `${}`:

# 1. Variable substitution: You can use `${variable_name}` to substitute the value of a variable into a string. For example:
#    ```bash
#    name="John"
#    echo "Hello, ${name}!"
#    ```
#    Output: `Hello, John!`

# 2. Variable with default value: `${variable_name:-default_value}` expands to the value of the variable if it is set, and the default value otherwise. For example:
#    ```bash
#    echo "User: ${USER:-guest}"
#    ```
#    Output: `User: <username>` (replaces `<username>` with the actual username if set, otherwise "guest")

# 3. Variable with default value and assignment: `${variable_name:=default_value}` expands to the value of the variable if it is set, and assigns the default value to the variable otherwise. For example:
#    ```bash
#    echo "User: ${USER:=guest}"
#    echo "Welcome, ${USER}"
#    ```
#    Output:
#    ```
#    User: <username> (replaces <username> with the actual username if set, otherwise "guest")
#    Welcome, <username> (replaces <username> with the actual username if set, otherwise "guest")
#    ```

# 4. Length of a string: `${#string}` expands to the length of the string. For example:
#    ```bash
#    name="Alice"
#    echo "The length of the name is ${#name} characters."
#    ```
#    Output: `The length of the name is 5 characters.`

# 5. Substring extraction: `${string:start:length}` expands to a substring of `string`, starting at `start` and with a length of `length`. For example:
#    ```bash
#    sentence="Hello, World!"
#    echo "Substring: ${sentence:7:5}"
#    ```
#    Output: `Substring: World`

# These are just a few examples of how `${}` can be used in shell scripting. It offers more advanced features like pattern matching, conditional substitution, and more, which can be explored in detail in the shell scripting documentation.
#----------------------------------------------------------------------------------------------

# $() in shell script
# In shell scripting, the `$()` notation, also known as command substitution, is used to capture the output of a command and use it within the script. It allows you to execute a command and replace it with its output. Here's how it works:

# 1. Command substitution: You can use `$(command)` to substitute the output of a command into a script. For example:
#    ```bash
#    current_date=$(date +%Y-%m-%d)
#    echo "Today is $current_date"
#    ```
#    Output: `Today is 2023-06-29` (assuming the current date is June 29, 2023)

#    In the example above, the `date +%Y-%m-%d` command retrieves the current date in the specified format, and the output is captured and assigned to the `current_date` variable using `$(...)`. The value is then used in the subsequent `echo` command.

# 2. Nesting command substitutions: You can also nest command substitutions within each other. For example:
#    ```bash
#    file_count=$(ls -l $(dirname $(readlink -f $0)) | wc -l)
#    echo "The number of files in the script's directory is $file_count"
#    ```
#    Output: `The number of files in the script's directory is <count>`

#    In this example, the `dirname $(readlink -f $0)` command gets the directory path of the current script, and `ls -l` lists the files in that directory. The output is then piped to `wc -l` to count the number of lines (which represents the number of files). The final count is captured and assigned to the `file_count` variable using `$(...)`, and then it is echoed.

# Command substitution with `$()` is a powerful feature in shell scripting that allows you to integrate the output of commands directly into your scripts. It provides flexibility and enables you to perform complex operations by combining commands and their outputs.
#----------------------------------------------------------------------------------------------

# Functions
# Two ways to declare a function
# function f1(){
#     echo f1
# }
# f2(){
#     echo f2
# }
# How to call a function
# functionName

# How to use the arguments in functions
# addition(){
#     local num1=$1
#     local num2=$2
#     local sum=$((num1+num2))
#     echo sum of $num1 and $num2 is $sum
# }

# How to call functions with arguments
# addition 12 13
#----------------------------------------------------------------------------------------------

# Shell Variables
# Random- A random integer between 0-32767
# UID- User ID of the user logged in
# echo $RANDOM 
# echo $UID
#----------------------------------------------------------------------------------------------

# Redirects
# pwd >> out.txt (Append Output)
# cd /root > error.txt 2>&1 (Add Error)
# FILE="/e/shell_scripting/tutorials/name"
# read TEXT<$FILE (Store content in TEXT)
# echo $TEXT

# In shell scripting, I/O redirects are used to control the input and output of commands or scripts. They allow you to redirect input from a file or command, and redirect output to a file or command. Here are the common I/O redirect operators in shell scripting:

# 1. Input Redirection (`<`): It is used to redirect the input of a command from a file instead of the standard input. For example:
#    ```
#    command < input.txt
#    ```

# 2. Output Redirection (`>`): It is used to redirect the output of a command to a file instead of the standard output. If the file already exists, it will be overwritten. For example:
#    ```
#    command > output.txt
#    ```

# 3. Appending Output Redirection (`>>`): It is similar to `>` but appends the output to the end of the file instead of overwriting it. If the file doesn't exist, it will be created. For example:
#    ```
#    command >> output.txt
#    ```

# 4. Error Redirection (`2>` or `2>>`): It redirects the error output (stderr) of a command to a file instead of the standard error. For example:
#    ```
#    command 2> error.txt
#    ```

# 5. Input Redirection from a Command (`<<`): It allows you to redirect input from a here document, which is a block of text within the script. For example:
#    ```
#    command << EOF
#    This is the input
#    EOF
#    ```

# 6. Input Redirection from a Command Output (`|`): It allows you to use the output of one command as the input for another command. It is known as a "pipe." For example:
#    ```
#    command1 | command2
#    ```

# These I/O redirection operators can be combined to achieve more complex input and output redirection scenarios in shell scripts. Remember to use proper syntax and take care when redirecting input/output, as it can overwrite existing files or produce unexpected results if not used correctly.
#----------------------------------------------------------------------------------------------

# /dev/null
# In shell scripting, `/dev/null` is a special file that acts as a "black hole" or a sink for data. It discards anything written to it and produces no output when read from. It is often used for discarding unwanted output or suppressing command output. Here are a few common use cases for `/dev/null`:

# 1. Discarding output: You can redirect the output of a command to `/dev/null` to discard it completely. For example:
#    ```
#    command > /dev/null
#    ```

#    This command runs `command` and discards its standard output.

# 2. Suppressing error messages: You can redirect the error output (stderr) of a command to `/dev/null` to silence any error messages. For example:
#    ```
#    command 2> /dev/null
#    ```

#    This command runs `command` and discards its error output.

# 3. Redirecting both output and error to `/dev/null`: If you want to discard both standard output and error output, you can redirect both to `/dev/null`. For example:
#    ```
#    command > /dev/null 2>&1
#    ```

#    This command runs `command` and discards both its output streams.

# 4. Testing command success: You can use `/dev/null` to test whether a command was successful or not by redirecting its output. For example:
#    ```
#    if command > /dev/null; then
#        echo "Command succeeded"
#    else
#        echo "Command failed"
#    fi
#    ```

#    In this case, if the `command` succeeds, the success message is printed. Otherwise, the failure message is printed.

# By redirecting output or error to `/dev/null`, you can effectively silence or discard unwanted output, making your scripts cleaner and more focused on the relevant information.

# command
# cd /root &> /dev/null
#----------------------------------------------------------------------------------------------

# Arguments in scripts

# ./myScript.sh arg1 arg2
# To get number of arguments: $#
# To display all arguments: $@
# To use or display and argument

# echo total number of arguments is $#
# echo All arguments are:
# echo $@
# echo $1 $2

# for i in $@
# do
#     echo $i 
# done
#----------------------------------------------------------------------------------------------

# Shifting of arguments
#----------------------------------------------------------------------------------------------
#  The shifting of arguments refers to the process of moving the positional parameters (arguments) within a script. It allows you to access and process different arguments in a loop or within a function. The shift command is used to perform argument shifting in shell scripts.
# echo Before Shifting
# echo $@

# echo After Shifting
# shift
# echo $@
#----------------------------------------------------------------------------------------------

# How to get all the arguments using for loop
# for arg in $@
# do
#     echo $arg
# done
#----------------------------------------------------------------------------------------------

# Sleep command
# In shell scripting, the sleep command is used to introduce a delay or pause the execution of a script for a specified amount of time. It is handy when you need to wait for a certain duration before proceeding with the next command or action. The sleep command takes a time argument in seconds, although some implementations may support fractions of seconds as well.

# date=$(date)
# echo $date
# sleep 2

# date=$(date)
# echo time after two seconds id $date
#----------------------------------------------------------------------------------------------

# How to stop script using exit keyword
# echo before exit
# exit
# echo after exit

# In shell scripting, you can stop the execution of a script using the `exit` keyword. The `exit` command terminates the script and returns an exit status, indicating the success or failure of the script.

# The basic syntax of the `exit` command is as follows:

# ```bash
# exit [status]
# ```

# Here, `status` is an optional parameter that represents the exit status of the script. It can be an integer from 0 to 255. By convention, an exit status of 0 indicates success, and any non-zero value indicates an error or failure.

# To stop a script immediately, you can use the `exit` command without specifying a status. For example:

# ```bash
# #!/bin/bash

# echo "This is the first line."
# exit
# echo "This line won't be executed."
# ```

# When you run this script, it will output:

# ```
# This is the first line.
# ```

# The script execution stops at the `exit` command, and any subsequent commands are not executed.

# If you want to indicate the success or failure of the script explicitly, you can provide an exit status. For instance, to exit with a success status, you can use:

# ```bash
# exit 0
# ```

# To exit with a failure status, you can use a non-zero value, such as:

# ```bash
# exit 1
# ```

# You can choose the appropriate exit status based on your script's logic and requirements.

# The `exit` command is commonly used to terminate a script when certain conditions are met or to handle error scenarios. It allows you to gracefully exit the script and communicate the result to the caller or other processes that invoke the script.
#----------------------------------------------------------------------------------------------

# How to make a variable constant
# name=Ankit
# name=Not
# echo $name

# readonly newname=Ankit
# newname=A # Gives an error
# echo $newname
