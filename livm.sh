#!/bin/bash

#
#Livia Service Manager
#Author: Christopher EnyTC
#Username: chrisenytc
#Site: http://chris.enytc.com
#Github: https://github.com/chrisenytc/livia
#Twitter: @chrisenytc
#

#Variables
args=("$@")

#Functions
function empty
{
    local var="$1"

    # Return true if:
    # 1.    var is a null string ("" as empty string)
    # 2.    a non set variable is passed
    # 3.    a declared variable or array but without a value is passed
    # 4.    an empty array is passed
    if test -z "$var"
    then
        [[ $( echo "1" ) ]]
        return

    # Return true if var is zero (0 as an integer or "0" as a string)
    elif [ "$var" == 0 2> /dev/null ]
    then
        [[ $( echo "1" ) ]]
        return

    # Return true if var is 0.0 (0 as a float)
    elif [ "$var" == 0.0 2> /dev/null ]
    then
        [[ $( echo "1" ) ]]
        return
    fi

    [[ $( echo "" ) ]]
}

#Get input
if empty "${1}"
then
    opt="null"
else
    opt=$1
fi

# Verify Commands
if [ $opt = "start" ]
then
	sudo service apache2 start
	sudo service mysql start
	echo "Services started with success!"
elif [ $opt = "stop" ]
then
	sudo service apache2 stop
        sudo service mysql stop
        echo "Services stopped with success!"
elif [ $opt = "restart" ]
then
	sudo service apache2 restart
        sudo service php5-fpm restart
        sudo service mysql restart
        echo "Services restarted with success!"
elif [ $opt = "help" ]
then
	echo "Welcome to Livia Service Manager"
	echo "Site: http://chris.enytc.com"
	echo "Author: Christopher EnyTC"
	echo "Email: chrisenytc@gmail.com"
	echo "GitHub: https://github.com/chrisenytc/livia"
	echo "License: MIT License"
	echo "Try Commands: start, stop or restart to use Livia Service Manager."
else
	echo "Command ${opt} not found!"
	echo "Try 'livia help'"
fi
